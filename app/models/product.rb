# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  user_id    :string(255)
#  desc       :text(65535)
#  short_desc :text(65535)
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  has_many :orders
  belongs_to :user
end
