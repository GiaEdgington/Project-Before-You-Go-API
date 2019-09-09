class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: :destinations
    end

    def create
        user = User.create(user_params)
        if user.valid?
          render json: user, status: :created 
        else
          render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def show
      user = User.find(params[:id])
      render json: user, include: :destinations
    end

    private
    def user_params
        params.permit(:username, :password)
    end

end
