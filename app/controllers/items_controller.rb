class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  def index
    @items = @department.items
  end

  def show
  end

  def new
    @item = @department.items.new
    render partial: "form"
  end

  def create
    @item = @department.items.new(item_params)

    # binding.pry
    if @item.save
      # redirect_to department_item_path(@department, @item)
      redirect_to department_item_path(@department,@item)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @item.update(item_params)
      redirect_to department_path(@department)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    # binding.pry
    redirect_to department_path(@department) # need the department param to link the id
  end
    
#############################################  
private

  def item_params
    params.require(:item).permit(:name, :description, :price)
    # binding.pry
  end

  def set_department
    # binding.pry
    @department = Department.find(params[:department_id])
  end

  def set_item
    # binding.pry
    @item = Item.find(params[:id])
  end
end
