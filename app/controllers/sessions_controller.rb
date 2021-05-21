class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      render json: {
        status: 200,
        id: @user.id,
        email: @user.email,
        password: @user.password

      }
    else
      render json: {message: "No User found"}
    end
  end



  def user_params
    params.require(:session).permit(:email, :password)
  end
end
