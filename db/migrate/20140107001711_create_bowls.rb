class CreateBowls < ActiveRecord::Migration
  def change
    create_table :bowls do |t|
      t.string :name
      t.datetime :date
      t.boolean :played?
      t.string :favorite
      t.string :underdog
      t.string :winner
    end
  end
end
