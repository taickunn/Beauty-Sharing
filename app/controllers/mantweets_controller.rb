class MantweetsController < ApplicationController

  before_action :set_mantweet, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:new, :create]




  def index
    @mantweet = Mantweet.all.order("created_at DESC")
  end

  def new
    @mantweet = Mantweet.new
  end

  def create
    @mantweet = Mantweet.new(mantweet_params)
    if @mantweet.save
      redirect_to post_mantweets_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @mantweet.update(mantweet_params)
      redirect_to post_mantweet_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  
    def mantweet_params
      params.require(:mantweet).permit(:name, :description, :image).merge(user_id: current_user.id)
    end

    def set_mantweet
      @mantweet = Mantweet.find(params[:id])
    end


end
