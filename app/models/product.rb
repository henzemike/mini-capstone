class Product < ApplicationRecord

  validates :name, length: { maximum: 40 }
  validates :name, uniqueness: true
  validates :name, presence: true

  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0 }

  validates :image_url, presence: true


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
