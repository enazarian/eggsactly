class SourcesController < ApplicationController
  def index
    @sources = Source.all
  end

  def show
    @source = Source.find(params[:id])
  end

  def new
    @source = Source.new
  end

  def create
    @source = Source.new
    @source.name = params[:name]
    @source.address = params[:address]
    @source.city = params[:city]
    @source.state = params[:state]
    @source.zip = params[:zip]
    @source.website_url = params[:website_url]

    if @source.save
      redirect_to sources_url, :notice => "Source created successfully."
    else
      render 'new'
    end
  end

  def edit
    @source = Source.find(params[:id])
  end

  def update
    @source = Source.find(params[:id])

    @source.name = params[:name]
    @source.address = params[:address]
    @source.city = params[:city]
    @source.state = params[:state]
    @source.zip = params[:zip]
    @source.website_url = params[:website_url]

    if @source.save
      redirect_to source_url(@source.id), :notice => "Source updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @source = Source.find(params[:id])

    @source.destroy

    redirect_to sources_url, :notice => "Source deleted."
  end
end
