Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    get "/products" => "products#products_method"

    get "/product1" => "products#first_product_method"

    get "/product2" => "products#second_product_method"

    get "/product3" => "products#third_product_method"

  end

end
