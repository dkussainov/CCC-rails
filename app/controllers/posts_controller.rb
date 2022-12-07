

class PostsController < ApplicationController

    skip_before_action :authorize, only: [:allposts]

    def index
        user = User.find(session[:user_id])
        posts = user.posts
        render json: posts.reverse, status: :ok
    end

    def show
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:id])
        render json: post, status: :ok
    end

    def create
        byebug
        user = User.find_by(id: session[:user_id])
        post = user.posts.create!(post_params.merge(:user_id => user.id))
        render json: post, status: :created
    end

    def update
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:id])
        post.update!(post_params)
        render json: post, status: :accepted
    end

    def destroy
  
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:id])
        post.destroy
        head :no_content
    end

    def allposts
        render json: Post.all.reverse, status: :ok
    end

    private

    def post_params
        params.permit(:image_url, :description, :user_id)
    end

end
