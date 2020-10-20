class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(mantweet_id: params[:mantweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @mantweet = Mantweet.find(params[:mantweet_id])
    @favorite = current_user.favorites.find_by(mantweet_id: @mantweet.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
