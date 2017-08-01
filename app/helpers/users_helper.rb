module UsersHelper
  def current_user_is_following(current_user_id, followed_user_id)
    relationship = Follow.find_by(follower_id: current_user_id, following_id: followed_user_id)
    return true if relationship
  end
  
  def current_category_is_subscribed(current_user_id, subscribed_category_id)
    relationship = Subscribe.find_by(subscriber_id: current_user_id, subscription_id: subscribed_category_id)
    return true if relationship
  end
end
