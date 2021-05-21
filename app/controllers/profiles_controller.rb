class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
    render json: @profiles
  end

  def create
    @user = get_current_user()
    params[:user_id] = @user.id

    @profile = Post.create(profile_params())
      respond_to_post()
      # @profile = Profile.create(profile_params)
  end
  private

def profile_params
    params.permit(:about, :name, :age, :image, :gender, :interest, :bio)
end
end
