class WeightsController < ApplicationController
    before_action :set_list
    def index
        @weights = @list.weights.all
    end

    private
    def set_list
       @list =  List.find(params[:list_id])
    end 
end
