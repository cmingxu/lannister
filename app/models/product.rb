# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  name            :string(255)
#  user_id         :string(255)
#  desc            :text(65535)
#  short_desc      :text(65535)
#  state           :string(255)
#  price           :decimal(10, )
#  discount_price  :decimal(10, )
#  quantity        :integer
#  quantity_remain :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ApplicationRecord
  STATES = {
    active: '售卖中',
    inactive: '编辑中',
    archived: '隐藏'
  }

  has_many :orders
  belongs_to :user

  validates :name, uniqueness: { scope: :user_id }
  validates :user_id, :price, :discount_price, :quantity_remain, :quantity,  presence: true
  validates :quantity, :quantity_remain, numericality: { gt: 0 }

  STATES.keys.each do |state|
    scope state, -> { where(state: state) }
  end
end
