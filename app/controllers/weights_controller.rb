class WeightsController < ApplicationController

    def index
        @weights = @roster.weights.all
    end
end
