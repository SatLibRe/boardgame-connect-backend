class BoardgamesController < ApplicationController

  #https://www.boardgameatlas.com/api/search?order_by=popularity&ascending=false&client_id=s0dPEZnuUa

  def index
    boardgames = Boardgame.all
    render json: boardgames
  end

  


end
