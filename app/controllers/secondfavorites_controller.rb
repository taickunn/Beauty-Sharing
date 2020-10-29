class SecondfavoritesController < ApplicationController
  def create
    @favorite = current_user.secondfavorites.create(womantweet_id: params[:womantweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @womantweet = Womantweet.find(params[:womantweet_id])
    @favorite = current_user.secondfavorites.find_by(womantweet_id: @womantweet.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
