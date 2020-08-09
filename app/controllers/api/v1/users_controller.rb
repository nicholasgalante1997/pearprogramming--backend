class Api::V1::UsersController < ApplicationController 

    def index 
        users = User.all 
        render json: users 
            # :include => {
            #     :posts => { :include => :comments},
            #     :my_challenges => { :include => :challenge }
            # }
    end 

    def show 
        user = User.find(params[:id])
        render json: user 
            # :include => {
            #     :posts => { :include => :comments},
            #     :my_challenges => { :include => :challenge }
            # }
    end 

    def create 
       user = User.create!(user_params)
       render json: user
            # :include => {
            #     :posts => { :include => :comments},
            #     :my_challenges => { :include => :challenge }
            # }
    end 

    def update 
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
        # :include => {
        #     :posts => { :include => :comments},
        #     :my_challenges => { :include => :challenge }
        # }
    end 

    def destroy
        user = User.find(params{:id})
        user.destroy! 
        render json: {}
    end 




    private 

    def user_params 
        params.require(:user).permit(:username, :password_digest, :bio, :img_url)
    end 
    
end 