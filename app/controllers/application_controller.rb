class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_request_host

  def set_request_host
    RequestStore.store[:host] = request.host
  end

  def authenticate_user!
    redirect_to("/") unless current_user.try(:admin?)
  end
end
