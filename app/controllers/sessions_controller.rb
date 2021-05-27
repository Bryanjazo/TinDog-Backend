class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    @profile = Profile.find_by(user_id: @user.id)
    profileHome = @profile.id if @profile
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: {
        status: 200,
        id: @user.id,
        email: @user.email,
        password: @user.password,
        profile_id: profileHome
      }
    else
      render json: {message: "No User found"}
    end
  end


end
