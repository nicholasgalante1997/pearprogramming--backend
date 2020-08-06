class Api::V1::PostsController < ApplicationController 
    
    def index 
        posts = Post.all 
        render json: posts,
        :include => :comments
    end 

    def show 
        post = Post.find(params[:id])
        render json: post, 
        :include => :comments
    end 

    def create
        post = Post.create!(post_params)
        render json: post, 
        :include => :comments 
    end 

    def update 
        post = Post.find(params[:id])
        post.update!(post_params)
        render json: post,
        :include => :comments 
    end 

    def destroy 
        post = Post.find(params[:id])
        post.destroy!
        render json: {}
    end 

    private 

    def post_params 
        params.require(:post).permit(:user_id, :topic, :text_content)
    end 

end 