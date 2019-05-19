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

require 'rails_helper'

RSpec.describe User, type: :model do
  context "associations" do
    it { should have_one(:site) }
  end

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:phone) }
  end
end
