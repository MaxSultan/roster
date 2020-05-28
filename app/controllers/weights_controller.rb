class WeightsController < ApplicationController
    
    HIGH_SCHOOL_WEIGHTS = %w(106,113,120,126,132,138,145,152,160,170,182,195,220,285)

    def self.hs_weight
        %w(106,113,120,126,132,138,145,152,160,170,182,195,220,285)
    end

    def index
        @weights = List.weights.all
    end 

    def show
    end 

    def new
        @hs = HIGH_SCHOOL_WEIGHTS
    end
    
    def create
    end 

    def edit
    end 

    def update
    end 

    def destroy
    end 

    private

end
