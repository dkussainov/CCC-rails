class LikesController < ApplicationController

    def index
        render json: Like.all, status: :ok
    end

    def create
        user = User.find_by(id: session[:user_id])
        post = Post.find(params[:post_id])
        like = Like.create!(user_id: user.id, post_id: post.id)
        render json: like, status: :created
    end


    def destroy
        user = User.find_by(id: session[:user_id])
        like = Like.find(params[:id])
        like.destroy
        head :no_content
    end

    private
    def likes_params
        params.permit(:post_id, :user_id) 
    end

end
