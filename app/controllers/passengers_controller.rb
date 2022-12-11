class PassengersController < ApplicationController

    def index
        passengers = Passenger.all
        render json: passengers, except: [:created_at, :updated_at]
    end

    def show
        passenger = Passenger.find_by(age:params[:age])
        if passenger
            render json: passenger
        else
            render json: { error: "passenger not found"}, status: 404
        end
    end

    def create
        passenger = Passenger.create(passenger_params)
        render json: passenger
    end

end
