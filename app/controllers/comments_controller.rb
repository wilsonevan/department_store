class CommentsController < ApplicationController
  before_action :set_item
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
  def index
    @comments = @item.comments
  end

  def show
    # binding.pry

  end

  def new
    @comment = @item.comments.new
    render partial: "form"
  end

  def create
    @comment = @item.comments.new(comment_params)

    # binding.pry
    if @comment.save
      # redirect_to comment_comment_path(@item @comment)
      redirect_to item_comment_path(@item, @comment)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @comment.update(comment_params)
      redirect_to item_comment_path(@item, @comment)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    # binding.pry
    redirect_to department_item_path([@item[:department_id],@item[:id]]) # need the comment param to link the id
  end
    
#############################################  
private

  def comment_params
    params.require(:comment).permit(:title, :body, :author)
  end

  def set_item
    # binding.pry
    @item = Item.find(params[:item_id])
  end

  # def set_comment
  #   # binding.pry
  #   @comment = comment.find(params[:comment_id])
  # end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
