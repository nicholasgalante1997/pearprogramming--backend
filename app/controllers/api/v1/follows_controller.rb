class Api::V1::FollowsController < ApplicationController 

    def index 
        follows = Follow.all 
        render json: follows 
    end 

    def show 
        follow = Follow.find(params[:id])
        render json: follow  
    end 

    def create
        follow = Follow.create!(follow_params)
        render json: follow
    end 

    def update 
       follow = Follow.find(params[:id])
       follow.update!(follow_params)
       render json: follow 
    end 

    def destroy
        follow = Follow.find(params[:id])
        follow.destroy!
        render json: {}
    end 

    private 

    def follow_params 
        params.require(:follow).permit(:id, :follower_id, :followee_id)
    end 

end 