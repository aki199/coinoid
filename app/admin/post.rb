ActiveAdmin.register Post do

    permit_params :title, :description, :created_at, :user_id, :category
    
    scope :all
    scope :published
    scope :unpublished
    
    action_item :publish, only: :show do
        link_to "Publish", publish_admin_post_path(post), method: :put if !post.created_at?
    end
    
    action_item :publish, only: :show do
        link_to "Unpublish", unpublish_admin_post_path(post), method: :put if !post.created_at?
    end
    
    member_action :publish, method: :put do
        post = Post.find(params[:id])
        post.update(publish_at: Time.zone.now)
        redirect_to admin_post_path(post)
    end
    
    member_action :unpublish, method: :put do
        post = Post.find(params[:id])
        post.update(publish_at: nil)
        redirect_to admin_post_path(post)
    end

end
