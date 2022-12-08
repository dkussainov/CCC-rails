class LikesController < ApplicationController
    def create
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        like = Like.create!(likes_params)
        render json: like, status: :created
    end

    def destroy
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        like = Like.find(params[:id])
        like.destroy
        head :no_content
    end

    private
    def like_params
        params.permit(:post_id, :user_id, :likes_num) 

end
