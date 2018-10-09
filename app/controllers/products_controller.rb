class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      Supplier_id: params[:Supplier_id]
    )

    @product.save 
    redirect_to "/products/#{@product.id}" 
  end

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @suppliers = Supplier.all
    @product = Product.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.Supplier_id = params[:Supplier_id]
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end

end
