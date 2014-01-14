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
    picks_to_save = pick_array.map do |new_pick|
      bowl = Bowl.find_by(:name => new_pick.keys)
      @pick = Pick.new
      @pick.bowl_id = bowl.id
      @pick.player_id = bowl_params[:player_id]
      @pick.winner = new_pick.values
    end
    binding.pry
    picks_to_save.each {|pick| pick.save}
  end

  def wins
  end

end