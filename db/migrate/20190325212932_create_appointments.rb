class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :user_id
      t.integer :wedding_venue_id

      t.timestamps
    end
  end
end
