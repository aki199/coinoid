class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_many :votes
    has_many :likes
    
    require 'rest-client'
    require 'json'
   

    
    searchkick
    
    scope :published, ->{ where.not(created_at: nil) }
    scope :unpublished, ->{ where(created_at: nil) }
    



    
    def upvotes
        votes.sum(:upvote)
    end
    
    def search_data
        {
          title: title,
          description: description
        }
    end
end
