Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    get "/products_url" => "products#products_method"

    get "/product1_url" => "products#first_product_method"

    get "/product2_url" => "products#second_product_method"

    get "/product3_url" => "products#third_product_method"

  end

end
