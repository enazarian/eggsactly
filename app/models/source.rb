class Source < ActiveRecord::Base
  has_many :stores, through: :products_at_store_from_source
  has_many :products_from_source
  has_many :products_at_store_from_source
end
