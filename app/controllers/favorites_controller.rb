class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    # user = User.find(params[:favorite_id])
    micropost = Micropost.find(params[:favorite_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    # user = User.find(params[:favorite_id])
    micropost = Micropost.find(params[:favorite_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end
