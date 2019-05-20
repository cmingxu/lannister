class ApplicationController < ActionController::Base
  attr_accessor :page_request_meta_info
  before_action :fake_signin
  before_action :set_page_request_meta_info
  helper_method :page_request_meta_info, :breadcrumb_list

  before_action :authenticate_user!
  def set_page_request_meta_info
    @page_request_meta_info ||= {}
  end

  def fake_signin
    sign_in User.first
  end

  def breadcrumb_list
    (@breadcrumb_list || []).unshift OpenStruct.new(name: "首页", path: root_path)
  end
end
