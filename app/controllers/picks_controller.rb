class PicksController < ApplicationController

  def new
    @pick = Pick.new
    @player = flash[:player]
  end

  def create
    @player = Player.find_by(:id => params[:player_id])
    @player.save_picks(params)
    redirect_to picks_path
  end

  def index
    @picks = Pick.all
  end

private
  
  def pick_params
    params.require(:pick).permit(:player_id,:bowl_id,:winner)
  end

end
