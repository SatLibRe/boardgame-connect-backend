class UserBoardGamesController < ApplicationController
    def index 
        user_board_games = UserBoardGame.all 
        render json: user_board_games
    end 

    def create 
        user_board_game = UserBoardGame.create(user_board_game_params)
        render json: user_board_game 
    end 

    def show 
        user_board_game = UserBoardGame.find(params[:id])
        render json: user_board_game
    end 
    
    def destroy 
        user_board_game = UserBoardGame.find(params[:id])
        UserBoardGame.delete()
    end 

    private 

    def user_board_game_params 
        params.require(:user_board_game).permit(:user_id, :boardgame_id)
    end 
end
