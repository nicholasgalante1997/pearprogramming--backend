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

    # def create 
    # #    user = User.new(
    # #        username: params[:username], 
    # #        password: params[:password]
    # #     )
    # #     if user.save 
    # #         render json: user
    # #         # :include => {
    # #         #     :posts => { :include => :comments},
    # #         #     :my_challenges => { :include => :challenge }
    # #         # }
    # #     else 
    # #         render json: {errors: user.errors.full_messages}
    #     end 
    def create
        user = User.new(
          username: params[:username],
          password: params[:password],
          bio: params[:bio],
          img_url: params[:img_url],
          programming_preferences: params[:programming_preferences]
        )
    
        if user.save
          token = encode_token(user.id)
          render json: {user: user, token: token}
        else
          render json: {errors: user.errors.full_messages}
        end
    
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
        params.require(:user).permit(:username, :password_digest, :bio, :img_url, :programming_preferences)
    end 
    
end 