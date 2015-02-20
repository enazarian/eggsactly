class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:name]
    @product.description = params[:description]

    if @product.save
      redirect_to products_url, :notice => "Product created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name]
    @product.description = params[:description]

    if @product.save
      redirect_to product_url(@product.id), :notice => "Product updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to products_url, :notice => "Product deleted."
  end
end
