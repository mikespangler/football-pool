class Bowl < ActiveRecord::Base

  def self.input_winner(bowl_params)
    bowl_params.each do |param|
      if Bowl.find_by(:id => param.keys)

      else 
        next
      end
    end
  end
end