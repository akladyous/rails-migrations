class HomeController < ApplicationController
  # layout "application"

  def get_current_page
    current_page?(controller: 'home', action: 'index')
  end

  def current_controller
    controller_action = Rails.application.routes.recognize_path(params[:controller])
    # current_path = path
  end

  def index
    # debugger
    # @current_path = Rails.application.routes.recognize_path("home")
    @current_path = Rails.application.routes.recognize_path(request.original_url)

    # @current_path = path

  end
  helper_method :current_controller
end
