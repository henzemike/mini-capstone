class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

    def index

      @products = Product.all

      if params[:name]
        @products = Product.where("name LIKE ?", "%#{params[:name]}%")
      end

      # if params[:price_sort]
      #   @products = @products.order(price: :asc)
      # else 
      #   @products = @products.order(id: :asc)
      # end

      if params[:category]
        category = Category.find_by(name: params[:category])
        @products = category.products
      end

      render "index.json.jbuilder"
    end

    # def first_product_method
    #   @product1 = Product.find_by(id: 1)
    #   render "first_product.json.jbuilder"
    # end

    # def second_product_method
    #   @product2 = Product.find_by(id: 2)
    #   render "second_product.json.jbuilder"
    # end

    # def third_product_method
    #   @product3 = Product.find_by(id: 3)
    #   render "third_product.json.jbuilder"
    # end

    def show
      @product = Product.find(params[:id])
      render "show.json.jbuilder"
    end


    def create
      @product = Product.create(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        Supplier_id: params[:supplier_id]
      )

      if @product.save # happy path
        render "show.json.jbuilder"
      else # sad path
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end

    end


    def update
      @product = Product.find(params[:id])

      #updates and saves produt information
      @product.name = params[:name] || @product.name
      @product.price = params[:price] || @product.price
      @product.description = params[:description] || @product.description
      

      if @product.save # happy path
        render "show.json.jbuilder"
      else # sad path
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end

    end
    

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
       render json: {message: "destroyed product"}
    end

end
