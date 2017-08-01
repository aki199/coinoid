class Subscribe < ApplicationRecord
    belongs_to :subscriber, foreign_key: 'subscriber_id', class_name: 'Category'
    belongs_to :subscription, foreign_key: 'subscription_id', class_name: 'Category'
end