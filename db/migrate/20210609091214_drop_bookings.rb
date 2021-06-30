class DropBookings < ActiveRecord::Migration[6.1]
  def up
    drop_table :bookings
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
