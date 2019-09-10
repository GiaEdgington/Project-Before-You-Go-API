class DestinationsController < ApplicationController

    def index
        if authenticated?
        destinations = Destination.all 
        render json: destinations, include: :books
        else
            tell_user_to_go_away!
        end
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
    end

    private
    def destination_params
        params.require(:destination).permit(:name, :user_id)
    end

    def authenticated?
        token = request.headers["Authorization"]
        if token.present?
            begin
                decoded_token = JWT.decode(token. "token", true, {...})
            rescue JWT::VerificationError
                return false
            end
            return true
        else
            false
        end
    end
end
