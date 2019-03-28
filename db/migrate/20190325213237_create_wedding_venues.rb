class CreateWeddingVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :wedding_venues do |t|
      t.string :name
      t.string :location
      t.string :cost
      t.string :full_bar
      t.string :guest_accommodation
      t.string :wedding_style
      t.string :img_url

      t.timestamps
    end
  end
end
