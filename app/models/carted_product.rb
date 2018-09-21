class CartedProduct < ApplicationRecord
  

  belongs_to :order, optional: true # allows to create with an empty foreign key
  belongs_to :user
  belongs_to :product
end
