class ApplicationController < ActionController::Base
protect_from_forgery with: :null_session
before_action :configure_permitted_parameters, if: :devise_controller?


def devise_current_user
  @devise_current_user ||= warden.authenticate(scope: :user)
end

def current_user
  if params[:user_id].blank?
    devise_current_user
  else
    User.find(params[:user_id])
  end   
end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:region])
  end
end
