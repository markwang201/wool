class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to("/") unless current_user.try(:admin?)
  end
end
