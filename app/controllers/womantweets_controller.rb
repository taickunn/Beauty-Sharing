class WomantweetsController < ApplicationController
  before_action :set_mantweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create]





  def index
    @womantweet = Womantweet.all.order("created_at DESC")
  end

  def new
    @womantweet = Womantweet.new
  end

  def create
    @womantweet = Womantweet.new(womantweet_params)
    if @womantweet.save
      redirect_to womantweets_path
    else
      render :new
    end
  end

  def show
    @secondcomments = @womantweet.secondcomments
    @secondcomment = @womantweet.secondcomments.build
  end

  def edit
  end

  def update 
    if @womantweet.update(womantweet_params)
      redirect_to womantweet_path
    else
      render :edit
    end
  end

  def destroy
    if @womantweet.destroy
      redirect_to womantweets_path
    else
      render :index
    end
  end

  

  private
  
    def womantweet_params
      params.require(:womantweet).permit(:title, :body, :image).merge(user_id: current_user.id)
    end

    def set_mantweet
      @womantweet = Womantweet.find(params[:id])
    end

    


end
