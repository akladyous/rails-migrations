class ApplicationController < ActionController::Base
  include ActionView::Helpers::UrlHelper

  def prova_tag
    current_page?(controller: 'home', action: 'index')
  end
  def current_controller
    controller_action = Rails.application.routes.recognize_path("home")
    current_path = path
  end
end
