class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    helper_method :resource_name, :resource, :devise_mapping, :resource_class
    

    
    def index
        unless user_signed_in?
            query = params[:q].presence || "*"
            @posts = Post.all.order("created_at DESC")
            @posts = Post.search(query)
            
            url = "https://api.coinmarketcap.com/v1/ticker/"
            response = RestClient.get(url)
            data=response.body
            @result = JSON.parse(data)

            
            
        else
            query = params[:q].presence || "*"
            @posts = Post.all.order("created_at DESC")
            @posts = Post.search(query)
            @likes = current_user.likes

            url = "https://api.coinmarketcap.com/v1/ticker/"
            response = RestClient.get(url)
            data=response.body
            @result = JSON.parse(data)
        end

    end
    
    def show
    end
    
    
    def new 
        @post = Post.new 
        @categories = Category.all.map{|c| [ c.name, c.id ] }
    end

    
    def create
        @post = current_user.posts.build(post_params)
        @post.category_id = params[:category_id] 

        respond_to do |format| 
            if @post.save
                format.html { redirect_to @post, notice: ('post was successfully created.') } 
                format.json { render :show, status: :created, location: @post } 
            else
                format.html { render :new } 
                format.json { render json: @post.errors, status: :unprocessable_entity } 
            end
        end
    end
    
    def edit
        @categories = Category.all.map{|c| [ c.name, c.id ] }
    end
    
    def update
        if @post.update(post_params)
            redirect_to post_path
        else
            render 'edit'
        end
        @post.category_id = params[:category_id]
    end
    
    def destroy
        @post.destroy
        redirect_to root_path
    end
    
    
    def resource_name
    :user
    end
    
    def resource
    @resource ||= User.new
    end
    
    def resource_class
    User
    end
    
    def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
    end
    
    
    private
    
        def post_params
            params.require(:post).permit(:title, :description)
        end
        
        def find_post
            @post = Post.find(params[:id])
        end
end
