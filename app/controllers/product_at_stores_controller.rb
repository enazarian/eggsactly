class ProductAtStoresController < ApplicationController
  def index
    @products = Product.all

    @product_at_stores = ProductAtStore.where(product_id: params[:products])
    @stores = Store.all
  end

  def show
    @product_at_store = ProductAtStore.find(params[:id])
  end

  def new
    @product_at_store = ProductAtStore.new
  end

  def create
    @product_at_store = ProductAtStore.new
    @product_at_store.product_id = params[:product_id]
    @product_at_store.store_id = params[:store_id]

    if @product_at_store.save
      redirect_to product_at_stores_url, :notice => "Product at store created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product_at_store = ProductAtStore.find(params[:id])
  end

  def update
    @product_at_store = ProductAtStore.find(params[:id])

    @product_at_store.product_id = params[:product_id]
    @product_at_store.store_id = params[:store_id]

    if @product_at_store.save
      redirect_to product_at_store_url(@product_at_store.id), :notice => "Product at store updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product_at_store = ProductAtStore.find(params[:id])

    @product_at_store.destroy

    redirect_to product_at_stores_url, :notice => "Product at store deleted."
  end
end
