class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :payment
      t.integer :wins
    end
  end
end
