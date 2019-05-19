class WelcomeController < ApplicationController
  def index
  end

  def mobile
    render layout: 'layouts/mobile'
  end
end
