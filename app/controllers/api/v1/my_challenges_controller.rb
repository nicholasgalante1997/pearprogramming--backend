class Api::V1::MyChallengesController < ApplicationController 

    def index 
        my_challenges = MyChallenge.all 
        render json: my_challenges,
            :include => :notes
    end 

    def show 
        my_challenge = MyChallenge.find(params[:id])
        render json: my_challenge,
            :include => :notes
    end 

    def create 
        my_challenge = MyChallenge.create!(my_challenge_params)
        render json: my_challenge,
            :include => :notes 
    end 

    def update 
        my_challenge = MyChallenge.find(params[:id])
        my_challenge.update!(my_challenge_params)
        render json: my_challenge,
            :include => :notes 
    end 

    def destroy 
        my_challenge = MyChallenge.find(params[:id])
        my_challenge.destroy!
        render json: {}
    end 

    private 

    def my_challenge_params 
        params.require(:my_challenge).permit(:user_id, :challenge_id, :completed)
    end 


end 
