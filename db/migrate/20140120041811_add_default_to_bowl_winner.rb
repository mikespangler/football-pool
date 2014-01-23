class AddDefaultToBowlWinner < ActiveRecord::Migration
  def change
    change_column :bowls, :winner, :string, :default => nil
  end
end
