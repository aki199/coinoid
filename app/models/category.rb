class Category < ApplicationRecord
    has_many :posts
    
    def index
        @categories = Category.all
    end
    
    def show
        @category = Category.find(params[:id])
    end
    
    def new
        @category = Category.new(category_params)
    end
    
    def create
        @category = Category.create(category_params)
        if @category.save
            flash[:success] = "Category successfully saved!"
            redirect_to :category
        else
            flash[:error] ="Category was not saved!"
            render :new
        end
    end
    
    def edit
        @category = Category.find(params[:id])
    end
    
    def update
        @category = Category.update(category_params)
        if @category.save
            flash[:success] = "Category successfully updated!"
            redirect_to @category
        else
            flash[:error] ="Category was not updated!"
            render :edit
        end
    end
    
    def destroy
        Category.find(params[:id]).destroy
    end

    
    private
    
        def category_params
            params.require(:cateogry).permit(:name, :desc)
        end

end