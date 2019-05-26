class Site < ApplicationRecord
  STATES = {
    active: '正常',
    inactive: '关闭'
  }

  belongs_to :user
end
