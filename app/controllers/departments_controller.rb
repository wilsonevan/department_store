class DepartmentsController < ApplicationController
  # Only runs this action before the listed methods
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  # Could also run as an ^except: [:index, :new, :create]

  def index
    @departments = Department.all.alphebetical_order
    # render :index #rails does this in the background
  end

  def show
    # localhost:3000/departments/1
  end

  def new
    @department = Department.new
    render partial: "form"
  end

  def create
    @department = Department.new(department_params)
    binding.pry
    if @department.save
      redirect_to departments_path
    else
      # nice to add error messages here
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @department.update(department_params)
      redirect_to department_path(@department)
    else  
      # nice to add error messages here
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name, :description)
  end

  def set_department
    
    @department = Department.find(params[:id])
  end

end
