class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    
  end
end
