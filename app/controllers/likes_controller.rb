class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new(user_id: @current_user.id, newplayer_id: params[:newplayer_id])
    @like.save
    redirect_to("/newplayers/#{params[:newplayer_id]}")
  end

  def destroy
    @like = Like.find_by(user_id: @current_user.id, newplayer_id: params[:newplayer_id])
    @like.destroy
    redirect_to("/newplayers/#{params[:newplayer_id]}")
  end
  
end