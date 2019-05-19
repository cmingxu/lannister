class ApplicationController < ActionController::Base
  attr_accessor :page_request_meta_info
  before_action :set_page_request_meta_info
  helper_method :page_request_meta_info, :breadcrumb_list

  before_action :authenticate_user!
  def set_page_request_meta_info
    @page_request_meta_info ||= {}
  end

  def breadcrumb_list
    @breadcrumb || []
  end

end
