class UsersController < ApplicationController


    def index
      user = User.all
      render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {message: "User not found."}
        end
    end

    def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end



    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
