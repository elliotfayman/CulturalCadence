class TopTenController < ApplicationController
  def topten
    @options = Music.all
    @music = Music.new
  end

  def suggestion

  end
end
