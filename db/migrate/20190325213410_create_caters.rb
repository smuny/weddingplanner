class CreateCaters < ActiveRecord::Migration[5.1]
  def change
    create_table :caters do |t|
      t.string :name
      t.string :packages

      t.timestamps
    end
  end
end
