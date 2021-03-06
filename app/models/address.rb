# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  province   :string(255)
#  city       :string(255)
#  region     :string(255)
#  phone      :string(255)
#  default    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Address < ApplicationRecord
  belongs_to :user

  validates :name, :province, :city, :region, :phone, presence: true
end
