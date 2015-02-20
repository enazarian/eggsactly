class ProductAtStoreFromSourcesController < ApplicationController
  def index
    @product_at_store_from_sources = ProductAtStoreFromSource.all
  end

  def show
    @product_at_store_from_source = ProductAtStoreFromSource.find(params[:id])
  end

  def new
    @product_at_store_from_source = ProductAtStoreFromSource.new
  end

  def create
    @product_at_store_from_source = ProductAtStoreFromSource.new
    @product_at_store_from_source.product_id = params[:product_id]
    @product_at_store_from_source.store_id = params[:store_id]
    @product_at_store_from_source.source_id = params[:source_id]

    if @product_at_store_from_source.save
      redirect_to product_at_store_from_sources_url, :notice => "Product at store from source created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product_at_store_from_source = ProductAtStoreFromSource.find(params[:id])
  end

  def update
    @product_at_store_from_source = ProductAtStoreFromSource.find(params[:id])

    @product_at_store_from_source.product_id = params[:product_id]
    @product_at_store_from_source.store_id = params[:store_id]
    @product_at_store_from_source.source_id = params[:source_id]

    if @product_at_store_from_source.save
      redirect_to product_at_store_from_source_url(@product_at_store_from_source.id), :notice => "Product at store from source updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product_at_store_from_source = ProductAtStoreFromSource.find(params[:id])

    @product_at_store_from_source.destroy

    redirect_to product_at_store_from_sources_url, :notice => "Product at store from source deleted."
  end
end
