class Favorite < ActiveRecord::Base
  :validates

  belongs_to :user
  belongs_to :product_from_source
end
