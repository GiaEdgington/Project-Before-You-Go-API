class DestinationsController < ApplicationController

    def index
        destinations = Destination.all 
        render json: destinations, include: :books
    end

    def create
        destination = Destination.create(destination_params)
        render json: destination
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination, include: :books
    end

    def destroy
        destination = Destination.find(params[:id])
        destination.destroy
        render json: { status: true }
    end

    private
    def destination_params
        params.require(:destination).permit(:name, :user_id)
    end

end
