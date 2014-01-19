class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :user_id
      t.integer :bowl_id
      t.string :winner
    end
  end
end
