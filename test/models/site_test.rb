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

require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
