class LikesController < ApplicationController

# keep track of the users already liked so it wont repeat
  def create
      like = Like.create(like_params)
      render json: like if like.save
end



  def index
    user = User.find_by(id: params[:user_id])
    likes = user.liked_profiles
    render json: likes.to_json(include: [:user])

  end

  private


  def like_params
    params.permit(:user_id, :profile_id, :super_like, :like, :dislike)
  end

end
