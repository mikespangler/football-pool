class Bowl < ActiveRecord::Base
  has_many :picks

  def self.input_winners(bowl_params)
    bowl_params.each do |param|
      bowl = Bowl.find_by(:id => param[0])
      if bowl
        if param[1].length > 0
          bowl.winner = param[1]
        else
          bowl.winner = nil
        end
        bowl.save
      end
    end
    User.update_win_count
  end



end