# == Schema Information
#
# Table name: sites
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  user_id    :integer
#  short_desc :text(65535)
#  desc       :text(65535)
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Site, type: :model do
  context "asscoiation" do
    it { should belong_to(:user) }
  end

  context "validations" do
  end
end
