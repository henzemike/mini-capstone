Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    #dispalys all products 
    get "/products" => "products#index"
    #shows single product
    get "/products/:id" => "products#show"
    #creates prodcut
    post "/products/" => "products#create"
    #updates prodcut
    patch "/products/:id" => "products#update"
    #destroys product
    delete "/products/:id" => "products#destroy"

    # get "/product1_url" => "products#first_product_method"

    # get "/product2_url" => "products#second_product_method"

    # get "/product3_url" => "products#third_product_method"

    # query selector method
    get "/product_select" => "products#select_product_method"

    # url selector method
    get "/product_select/:id" => "products#select_product_method"

  end

end
