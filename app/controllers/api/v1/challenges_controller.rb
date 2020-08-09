class Api::V1::ChallengesController < ApplicationController

    def index 
        challenges = Challenge.all 
        render json: challenges
            # :include => {
            #     :my_challenges => { :include => :user }
            # }
    end 

    def show 
        challenge = Challenge.find(params[:id])
        render json: challenge
            # :include => {
            #     :my_challenges => { :include => :user }
            # }
    end 


end 