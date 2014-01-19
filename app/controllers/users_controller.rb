class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def update_games
  end

private

def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:wins,:admin?,:salt,:encrypted_password)
  end
end
