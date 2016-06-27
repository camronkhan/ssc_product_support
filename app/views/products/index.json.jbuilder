json.array!(@products) do |product|
  json.extract! product, :id, :name, :image_url, :company_id
  json.url product_url(product, format: :json)
end