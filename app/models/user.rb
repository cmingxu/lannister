# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  phone              :string(255)
#  salt               :string(255)
#  encrypted_password :string(255)
#

class User < ApplicationRecord
  has_one :site
  has_many :addresses
  has_one :default_address, -> { where(default: true) }, class_name: :address

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :phone, presence: true
  validates :phone, uniqueness: true

end
