json.extract! order, :id, :user_id, :product_id, :quantity, :total_price, :address_id, :created_at, :updated_at
json.url order_url(order, format: :json)
