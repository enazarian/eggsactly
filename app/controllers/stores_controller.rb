class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new
    @store.name = params[:name]
    @store.address = params[:address]
    @store.city = params[:city]
    @store.state = params[:state]
    @store.zip = params[:zip]
    @store.website_url = params[:website_url]

    if @store.save
      redirect_to stores_url, :notice => "Store created successfully."
    else
      render 'new'
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])

    @store.name = params[:name]
    @store.address = params[:address]
    @store.city = params[:city]
    @store.state = params[:state]
    @store.zip = params[:zip]
    @store.website_url = params[:website_url]

    if @store.save
      redirect_to store_url(@store.id), :notice => "Store updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @store = Store.find(params[:id])

    @store.destroy

    redirect_to stores_url, :notice => "Store deleted."
  end
end
