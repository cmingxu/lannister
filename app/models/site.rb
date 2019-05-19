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

class Site < ApplicationRecord
  belongs_to :user

  def self.default
  end
end
