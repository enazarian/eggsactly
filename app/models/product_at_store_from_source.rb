class ProductAtStoreFromSource < ActiveRecord::Base
  belongs_to :product
  belongs_to :store
  belongs_to :source
end
