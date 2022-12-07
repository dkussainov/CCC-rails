class LikesController < ApplicationController
    def update
        user = User.find_by(id: session[:user_id])
        post = user.posts.find(params[:post_id])
        likes = post.likes

end
