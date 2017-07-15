class MessagesController < ApplicationController
    before_action :find_message, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    
    def index
        @messages = Message.all.order("created_at DESC")
        
    end
    
    def show
    end
    
    
    def new 
        @message = Message.new 
        @categories = Category.all.map{|c| [ c.name, c.id ] }
    end

    
    def create
        @message = current_user.messages.build(message_params)
        @message.category_id = params[:category_id] 

        respond_to do |format| 
            if @message.save
                format.html { redirect_to @message, notice: ('message was successfully created.') } 
                format.json { render :show, status: :created, location: @message } 
            else
                format.html { render :new } 
                format.json { render json: @message.errors, status: :unprocessable_entity } 
            end
        end
    end
    
    def edit
        @categories = Category.all.map{|c| [ c.name, c.id ] }
    end
    
    def update
        if @message.update(message_params)
            redirect_to message_path
        else
            render 'edit'
        end
        @message.category_id = params[:category_id]
    end
    
    def destroy
        @message.destroy
        redirect_to root_path
    end
    
    private
    
        def message_params
            params.require(:message).permit(:title, :description)
        end
        
        def find_message
            @message = Message.find(params[:id])
        end
end
