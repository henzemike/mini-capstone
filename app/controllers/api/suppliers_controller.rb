class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    
  end

  def create
    @supplier = Supplier.new(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number]
    )

    if @supplier.save
      render json: {message: 'Supplier created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  

end
