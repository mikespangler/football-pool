class AddSpreadtoBowls < ActiveRecord::Migration
  def change
    add_column :bowls, :spread, :integer
  end
end
