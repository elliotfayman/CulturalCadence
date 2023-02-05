class TopTenController < ApplicationController
  def topten
    @options = Music.all
    @music = Music.new
  end

  def suggestion
  end

  def create
    
    puts params.require(:music).permit(songs: [])
    redirect_to music_path(@music), notice: "Music successfully created"

  end
end
