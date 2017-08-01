class RelationshipsController < ApplicationController
  def follow_user
    @user = User.find_by! id: params[:id]
    if current_user.follow @user.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow_user
    @user = User.find_by! id: params[:id]
    if current_user.unfollow @user.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end
  
  def subscribe_user
    @category = Category.find_by! id: params[:id]
    if current_user.subscribe @category.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unsubscribe_user
    @category = Category.find_by! id: params[:id]
    if current_user.unsubscribe @category.id
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end
  
end
