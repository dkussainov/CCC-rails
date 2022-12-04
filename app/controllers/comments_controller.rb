class CommentsController < ApplicationController

    def index
 
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        comments = user.comments
        render json: comments, status: :ok
    end

    
    def create
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        comment = user.comments.create!(comment_params)
        render json: comment, status: :created
    end

    def destroy
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        comment = user.comments.find(params[:id])
        comment.destroy
        head :no_content
    end

    def allcomments
        user = User.find_by(id: session[:user_id])
        post = Post.all.find(params[:post_id])
        comment = user.comments.create!(comment_params)
        render json: comment, status: :created
    end

    private

    def comment_params
        params.permit(:text, :post_id)
    end
end
