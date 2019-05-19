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

require 'rails_helper'

RSpec.describe Address, type: :model do
  context  "asscoiation" do
    it { should belong_to(:user) }
  end

  context "validations" do
    [:name, :province, :city, :region, :phone].each do |field|
      it { should validate_presence_of(field) }
    end
  end
end
