class Product < ActiveRecord::Base
  has_many :product_categories
  has_many :products_from_source
  has_many :products_at_store_from_source
end
