class PassengersController < ApplicationController

    def index
        passengers = Passenger.all
        render json: passengers, except: [:created_at, :updated_at]
    end

    def show
        passenger = find_passenger
        render json: passenger
        rescue ActiveRecord::RecordNotFound
        render json: { error: "passenger not found"},  status: :not_found
        end
    end

    def create
        passenger = Passenger.create(passenger_params)
        render json: passenger
    end

    private

    def find_passenger
        Passenger.find(params[:id])
    end

end
