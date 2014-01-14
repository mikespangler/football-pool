class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :player_id
      t.integer :bowl_id
      t.string :winner
    end
  end
end
