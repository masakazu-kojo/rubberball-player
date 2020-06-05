class NewplayersController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user,{only: [:edit, :update, :destroy]}

  def index
    @newplayers = Newplayer.all.order(created_at: :desc)
  end

  def show
    @newplayer = Newplayer.find_by(id: params[:id])
    @user = @newplayer.user
    @likes_count = Like.where(newplayer_id: @newplayer.id).count
  end

  def new
    @newplayer = Newplayer.new
  end

  def create
    @newplayer = Newplayer.new(content: params[:content],user_id: @current_user.id)
    if @newplayer.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/newplayers/index")
    else
      render("newplayers/new")
    end
  end

  def edit
    @newplayer = Newplayer.find_by(id: params[:id])
  end

  def update
    @newplayer = Newplayer.find_by(id: params[:id])
    @newplayer.content = params[:content]
    if @newplayer.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/newplayers/index")
    else
      render("newplayers/edit")
    end
  end

  def destroy
    @newplayer = Newplayer.find_by(id: params[:id])
    @newplayer.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/newplayers/index")
  end

  def ensure_correct_user
    @newplayer = Newplayer.find_by(id: params[:id])
    if @newplayer.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/newplayers/index")
    end
  end

end
