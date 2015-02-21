class Source < ActiveRecord::Base
  has_many :stores, through: :product_at_store_from_sources
  has_many :product_from_sources
  has_many :product_at_store_from_sources
end
