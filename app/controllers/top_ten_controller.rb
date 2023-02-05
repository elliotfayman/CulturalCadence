class TopTenController < ApplicationController
  def topten
    @user = current_user
    @music = Music.all
  end

  def suggestion
  end

  def create
    
    puts params.require(:music).permit(songs: [])
    redirect_to music_path(@music), notice: "Music successfully created"

  end
end
