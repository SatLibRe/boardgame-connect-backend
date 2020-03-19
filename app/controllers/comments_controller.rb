class CommentsController < ApplicationController

    def index 
        comments = Comment.all 
        render json: comments
    end 

    def create 
        comment = Comment.create(comment_params)
        render json: comment 
    end 

    def show 
        comment = Comment.find(params[:id])
        render json: comment
    end 
    
    def destroy 
        comment = Comment.find(params[:id])
        Comment.delete()
    end 

    private 

    def comments_params 
        params.require(:comment).permit(:boardgame_id, :content)
    end 
end
