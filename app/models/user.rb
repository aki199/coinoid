class User < ApplicationRecord

  has_many :posts
  has_many :comments
  has_many :votes
  has_many :likes
  #following relationship
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  has_many :subscriber_relationships, foreign_key: :subscription_id, class_name: 'Subscribe'
  has_many :subscribers, through: :subscriber_relationships, source: :subscriber

  has_many :subscription_relationships, foreign_key: :subscriber_id, class_name: 'Subscribe'
  has_many :subscription, through: :subscription_relationships, source: :subscription



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
  
  
  #Voting methods
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
  
  
  # Follow methods
  def follow(user_id)  
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end


    def subscribe(category_id)  
        subscription_relationships.create(subscription_id: category_id)
    end

    def unsubscribe(category_id)
        subscription_relationships.find_by(subscription_id: category_id).destroy
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
