class WelcomeController < ApplicationController
  def index
    @breadcrumb_list = [OpenStruct.new(name: "我的小店", path: root_path)]
    @orders = current_user.orders.page 1
  end

  def mobile
    render layout: 'mobile'
  end
end
