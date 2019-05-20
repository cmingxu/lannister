class UsersController < ApplicationController
  before_action :set_breadcrumb

  def index
    @q = User.ransack params[:q]
    @users = @q.result.order('id asc').page params[:page]
  end

  private
  def set_breadcrumb
    @breadcrumb_list = [OpenStruct.new(name: "我的小店", path: root_path), OpenStruct.new(name: "全部买家", path: users_path) ]
  end
end
