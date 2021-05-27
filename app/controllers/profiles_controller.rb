class ProfilesController < ApplicationController
  def index
    if Like.find_by(user_id: params[:user_id], profile_id: params[:profile_id])
      render json: {
        message: 'user already liked'
      }
    else
        @profiles = Profile.all
        render json: @profiles
    end
  end
# (current_user.profiles.likes != user_id)
  def create
    if Profile.find_by(user_id: params[:profile][:user_id].to_i)
      render json: {
        message: 'Profile was already created please Update if youd like to change'
      }
    else

      @profile = Profile.new(profile_params)
      if @profile.save
      render json: {
        id: @profile.id,
        name: @profile.name,
        image: @profile.image,
        age: @profile.age,
        gender: @profile.gender,
        interest: @profile.interest,
        bio: @profile.bio
      }
    end
    end
  end

  def update
    @profile = Profile.find_by(user_id: params[:profile][:user_id].to_i)
    @profile.update(profile_params)
    if @profile.save
      render json: {
        id: @profile.id,
        name: @profile.name,
        age: @profile.age,
        gender: @profile.gender,
        interest: @profile.interest,
        bio: @profile.bio
      }
    else
      render json: { message: 'sorry couldnt update' }
    end
  end

def show
@profile = Profile.find(params[:id])
end
  def destroy
    @profile.destroy
  end
private

def already_liked?
    Like.where(user_id: current_user.id, profile_id: params[:profile_id]).exists?
  end

  def profile_params
    params.require(:profile).permit(:user_id, :name, :age, :image, :gender, :interest, :bio, :profile_index)
  end
end
