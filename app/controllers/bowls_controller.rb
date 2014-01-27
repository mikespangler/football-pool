class BowlsController < ApplicationController
  def new
  end

  def index
    if !current_user.admin?
      redirect_to 'sessions#new'
    end
  end

  def create
  end

  def input_winners
    Bowl.input_winners(params)
    redirect_to picks_path
  end

private

 def bowl_params
    params.permit(1.upto(100).each {|num| :num.to_s})
  end



end
