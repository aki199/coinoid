class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    
    def index
        @posts = Post.all.order("created_at DESC")
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
    
    def upvote
        post = Post.find_by(id: params[:id])
        
        if current_user.upvoted?(post)
        current_user.remove_vote(post)
        else
        current_user.upvote(post)
        end
        
        redirect_to root_path
    end
    
    private
    
        def post_params
            params.require(:post).permit(:title, :description)
        end
        
        def find_post
            @post = Post.find(params[:id])
        end
end
