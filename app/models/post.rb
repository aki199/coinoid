class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_many :votes
    
    def upvotes
        votes.sum(:upvote)
    end
end
