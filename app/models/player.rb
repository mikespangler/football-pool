class Player < ActiveRecord::Base
  has_many :picks

  def strip_metadata(bowl_params)
    bowl_names = Bowl.all.map {|bowl| bowl.name}
    bowl_params.map do |param|
      {param[0] => param[1]} if bowl_names.include?(param[0])
    end
  end

  def save_picks(bowl_params)
    pick_array = strip_metadata(bowl_params).compact
    pick_array.each do |new_pick|
      bowl = Bowl.find_by(:name => new_pick.keys)
      pick = Pick.new
      pick.bowl_id = bowl.id
      pick.player_id = bowl_params[:player_id]
      pick.winner = new_pick.values.first
      pick.save
    end
  end

  def wins
    binding.pry
  end

end

  #   played_bowls = Bowl.all.map do |bowl|
  #     bowl if bowl.played?
  #   end

  #   played_bowls.each do |bowl|
  
  #       Pick.all.each do |pick|
  #         if pick.bowl_id == bowl.id
  #           pick.player.wins += 1 if pick.winner ==  bowl.winner
  #         end
  #       end
  #     end
  #   end
  # end