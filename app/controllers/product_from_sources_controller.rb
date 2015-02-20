class ProductFromSourcesController < ApplicationController
  def index
    @product_from_sources = ProductFromSource.all
  end

  def show
    @product_from_source = ProductFromSource.find(params[:id])
  end

  def new
    @product_from_source = ProductFromSource.new
  end

  def create
    @product_from_source = ProductFromSource.new
    @product_from_source.product_id = params[:product_id]
    @product_from_source.source_id = params[:source_id]

    if @product_from_source.save
      redirect_to product_from_sources_url, :notice => "Product from source created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product_from_source = ProductFromSource.find(params[:id])
  end

  def update
    @product_from_source = ProductFromSource.find(params[:id])

    @product_from_source.product_id = params[:product_id]
    @product_from_source.source_id = params[:source_id]

    if @product_from_source.save
      redirect_to product_from_source_url(@product_from_source.id), :notice => "Product from source updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product_from_source = ProductFromSource.find(params[:id])

    @product_from_source.destroy

    redirect_to product_from_sources_url, :notice => "Product from source deleted."
  end
end
