class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    @player.payment = params[:payment]
    @player.wins = 0
    @player.save
    redirect_to new_pick_path, :flash => { :player => @player }
  end

  def index
    @players = Player.all
  end

private
  
  def player_params
    params.require(:player).permit(:name,:email,:password,:payment,:wins)
  end

end