json.extract! product, :id, :name, :user_id, :desc, :short_desc, :state, :created_at, :updated_at
json.url product_url(product, format: :json)
