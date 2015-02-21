class ProductFromSource < ActiveRecord::Base
  has_many :favorites
  belongs_to :product
  belongs_to :source
end
