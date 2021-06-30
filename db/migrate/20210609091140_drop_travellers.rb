class DropTravellers < ActiveRecord::Migration[6.1]
  def up
    drop_table :travellers
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

