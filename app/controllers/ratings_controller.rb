class RatingsController < ApplicationController
  before_action :set_item
  before_action :set_rating, only: [:show, :edit, :update, :destroy]
  
  def index
    @ratings = @item.ratings
    # @average_rating = Rating.average_rating(@item)
  end

  def show
    # binding.pry
   
  end

  def new
    @rating = @item.ratings.new
    render partial: "form"
  end

  def create
    @rating = @item.ratings.new(rating_params)

    # binding.pry
    if @rating.save
      # redirect_to comment_comment_path(@item @comment)
      redirect_to item_rating_path(@item, @rating)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @rating.update(rating_params)
      redirect_to item_comment_path(@item, @rating)
    else
      render :edit
    end
  end

  def destroy
    @rating.destroy
    # binding.pry
    redirect_to department_item_path([@item[:department_id],@item[:id]]) # need the comment param to link the id
  end

  def show_ratings
    binding.pry
    @item.average_rating
  end
    
#############################################  
private

  def rating_params
    params.require(:rating).permit(:value)
  end

  def set_item
    # binding.pry
    @item = Item.find(params[:item_id])
  end

  # def set_comment
  #   # binding.pry
  #   @comment = comment.find(params[:comment_id])
  # end

  def set_rating
    @rating = Rating.find(params[:id])
  end
end
