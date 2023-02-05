class ApplicationController < ActionController::Base
protect_from_forgery with: :null_session
before_action :configure_permitted_parameters, if: :devise_controller?

def index

   if(current_user.nil?)
         redirect_to '/users/sign_in'
  else
  @music = Music.all.to_s
  @user = User.where(id: devise_current_user.id)
  @rank1 = User.select("rank1").where(id: devise_current_user)
  #@rank2 = @user.rank2
  #@rank3 = @user.rank3
  #@rank4 = @user.rank4
  #@rank5 = @user.rank5
  end

  @musicname1 = Music.select("song_name").where(id: @rank1)
  @musicdecade1 = Music.select("decade").where(id:@rank1)
  #@musicrank2 = @music.where(id: @rank2)
  #@musicrank3 = @music.where(id: @rank3)
  #@musicrank4 = @music.where(id: @rank4)
  #@musicrank5 = @music.where(id: @rank5)
end



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
