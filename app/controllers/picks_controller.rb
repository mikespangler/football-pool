class PicksController < ApplicationController

  def new
    @pick = Pick.new
    @user = flash[:user]
  end

  def create
    current_user.save_picks(params)
    redirect_to picks_path
  end

  def index
    @picks = Pick.all
  end

private
  
  def pick_params
    params.require(:pick).permit(:user_id,:bowl_id,:winner)
  end

end
