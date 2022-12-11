class PassengersController < ApplicationController
    def index
        passengers = Passenger.all
        render json: passengers
    end
end
