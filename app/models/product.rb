class Product < ApplicationRecord

  # def supplier 
  #   Supplier.find_by(id: Supplier_id)
  # end
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products 
  has_many :categories, through: :category_products


  belongs_to :Supplier # return a supplier hash
  has_many :images
  validates :name, length: { maximum: 40 }
  validates :name, uniqueness: true
  validates :name, presence: true

  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0 }


  validates :description, length: { in: 6..500 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end


end
