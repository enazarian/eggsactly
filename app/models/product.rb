class Product < ActiveRecord::Base
  has_many :product_categories
  has_many :product_from_sources
  has_many :product_at_store_from_sources
  has_many :product_at_stores
end
