class Pick < ActiveRecord::Base
  belongs_to :player
  belongs_to :bowl

  def self.sort_for_index
    Pick.all.sort_by {|pick| pick.bowl_id}
  end
end