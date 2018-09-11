class Api::ProductsController < ApplicationController

    def index
      @products = Product.all
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
        image_url: params[:image_url],
        description: params[:description],
      )

      if prodcut.save # happy path
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
      @product.image_url = params[:image_url] ||  @product.image_url
      @product.description = params[:description] || @product.description
      @product.save

      if prodcut.save # happy path
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
