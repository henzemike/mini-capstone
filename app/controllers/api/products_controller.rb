class Api::ProductsController < ApplicationController

    def product_method
      @product = 
      render "product_method.json.jbuilder"
    end

end
