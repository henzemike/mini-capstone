json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.current_user current_user
json.discounted product.is_discounted?
json.tax product.tax
json.total product.total
json.supplier product.Supplier.name
json.images product.images
json.categories product.categories



json.formatted do
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end
