class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user_messages = @user.messages.order("created_at DESC")
  end
  
end
