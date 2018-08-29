class Api::ProductsController < ApplicationController

    def products_method
      @products = Product.all
      render "products.json.jbuilder"
    end

    def first_product_method
      @product1 = Product.find_by(id: 1)
      render "first_product.json.jbuilder"
    end

    def second_product_method
      @product2 = Product.find_by(id: 2)
      render "second_product.json.jbuilder"
    end

    def third_product_method
      @product3 = Product.find_by(id: 3)
      render "third_product.json.jbuilder"
    end

end
