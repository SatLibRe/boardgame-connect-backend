class BoardgamesController < ApplicationController

  #https://www.boardgameatlas.com/api/search?order_by=popularity&ascending=false&client_id=s0dPEZnuUa

  def index 
    rooms = Boardgame.all 
    render json: rooms
end 

def create 
    boardgame = Boardgame.find_or_create_by(api_id: boardgame_params[:id])
    boardgame.update(boardgame_params)
    boardgame.save
    render json: boardgame 
end 

def show 
    boardgame = Boardgame.find(params[:id])
    render json: boardgame
end 

def destroy 
    boardgame = Boardgame.find(params[:id])
    Boardgame.delete()
end 

private 

def boardgame_params 
    params.require(:boardgame).permit(:id, :name, :year_published, :max_players, :min_players, :min_playtime, :description, :description_preview, :image_url, :thumb_url)
end 

  


end
