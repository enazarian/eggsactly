class Store < ActiveRecord::Base
  has_many :sources, through: :products_at_store_from_source
  has_many :products_at_store
  has_many :products_at_store_from_source
end
