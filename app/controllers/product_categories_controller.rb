class ProductCategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.all
  end

  def show
    @product_category = ProductCategory.find(params[:id])
  end

  def new
    @product_category = ProductCategory.new
  end

  def create
    @product_category = ProductCategory.new
    @product_category.product_id = params[:product_id]
    @product_category.category = params[:category]

    if @product_category.save
      redirect_to product_categories_url, :notice => "Product category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product_category = ProductCategory.find(params[:id])
  end

  def update
    @product_category = ProductCategory.find(params[:id])

    @product_category.product_id = params[:product_id]
    @product_category.category = params[:category]

    if @product_category.save
      redirect_to product_category_url(@product_category.id), :notice => "Product category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product_category = ProductCategory.find(params[:id])

    @product_category.destroy

    redirect_to product_categories_url, :notice => "Product category deleted."
  end
end
