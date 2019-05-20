# == Schema Information
#
# Table name: orders
#
#  id          :bigint           not null, primary key
#  user_id     :integer
#  product_id  :string(255)
#  quantity    :integer
#  total_price :float(24)
#  address_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
