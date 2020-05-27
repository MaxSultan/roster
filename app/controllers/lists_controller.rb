class ListsController < ApplicationController
  before_action :set_list, only:[:edit, :show, :update, :destroy]

  def index
    @lists = List.all
    
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list =List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end 
  end 

  def edit
  end

  def update
    if @list.update(list_params)
    redirect_to @list
    else
    render :edit
    end 
  end 

  def destroy
    @list.destroy
    redirect_to root_path
  end 
  

  private

  def list_params
    params.require(:list).permit(:name, :year)
  end 

  def set_list 
    @list = List.find(params[:id])
  end 
end
