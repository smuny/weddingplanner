class CreateWeddingCaters < ActiveRecord::Migration[5.1]
  def change
    create_table :wedding_caters do |t|
      t.integer :wedding_venue_id
      t.integer :cater_id
      t.timestamps
    end
  end
end
