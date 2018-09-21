class Api::CartedProductsController < ApplicationController

  def index
    if current_user
      @carted_products = current_user.carted_products.where(status: 'carted') # where only shows carted products in cart
       render "index.json.jbuilder"
    end
  end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted", 
    )

    if @carted_product.save
        render json: {message: 'Carted Product Created'}, status: :created
      else
        render json: {errors: cartedproduct.errors.full_messages}, status: :bad_request
      end
  end

   def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "destroyed")
    render json: {message: "destroyed carted product"}
  end
  
end
