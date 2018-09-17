class Supplier < ApplicationRecord

  # def products
  #   Product.where(Supplier_id: id) # returns an array
  # end

  has_many :products # returns an array of products


end
