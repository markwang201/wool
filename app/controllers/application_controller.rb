class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to("/") unless current_user.try(:admin?)
  end

  #Faraday.get('https://shimo.im/docs/I3SxcZx6P4cqS1Qtr').body.include?('<title>404 not found</title>')
end
