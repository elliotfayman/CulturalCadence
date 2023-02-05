class UserController < ApplicationController
  
  attr_accessor :id, :email, :region, :created_at, :updated_at, :rank1, :rank2, :rank3, :rank4, :rank5
  def profile
  end

  def show
    @user = User.find[params[:id]]
  end

  def update
    user = User.find(devise_current_user.id)
    @parameters = params[:user]
    user = User.where(id: user.id).update_all(rank1: @parameters[:rank1], rank2: @parameters[:rank2], rank3: @parameters[:rank3], rank4: @parameters[:rank4], rank5: @parameters[:rank5])    
    
  end
  private
  def topfiveparams #This is for permitted params
    params.require(:user).permit(:email, :region, :rank1, :rank2, :rank3, :rank4, :rank5)
  end
end
