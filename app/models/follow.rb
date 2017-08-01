class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
    belongs_to :following, foreign_key: 'following_id', class_name: 'User'
    
    scope :of_followed_users, -> (following_users) { where user_id: following_users }  
    def index
        @posts = Post.of_followed_users(current_user.following).order('created_at DESC').page params[:page]
    end
end
