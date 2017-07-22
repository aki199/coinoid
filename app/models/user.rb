class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :votes
  has_many :likes

  mount_uploader :avatar, AvatarUploader

  acts_as_messageable
  after_create :create_default_likes

  def mailboxer_email(object)
    email
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
  def upvote(post)
    votes.create(upvote: 1, post: post)
  end
  
  def upvoted?(post)
    votes.exists?(upvote: 1, post: post)
  end
  
  def remove_vote(post)
    votes.find_by(post: post).destroy
  end
  
  def likes?(post)
    post.likes.where(user_id: id).any?
  end
  
 
  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
    
    def create_default_likes
        # Create your likes here
        [2,3,4].each do |id|
            likes.create post_id: id
        end
    end
end
