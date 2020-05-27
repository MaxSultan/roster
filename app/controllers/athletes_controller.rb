class AthletesController < ApplicationController
  before_action :set_weight
  def index
    # @list = @weight.find(params[:list_id])
    @list = List.find_by_id(@weight.list_id)
    @weights = Weight.all
    @athletes = @weight.athletes.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end 

  private

  def set_weight
    @weight = Weight.find(params[:weight_id])
  end 
end

