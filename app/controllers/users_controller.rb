class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts.order("created_at DESC")
    @user_comments = @user.comments.order("created_at DESC")
  
  end
  
end
