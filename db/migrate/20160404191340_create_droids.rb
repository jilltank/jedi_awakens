class CreateDroids < ActiveRecord::Migration
  def change
    create_table :droids do |t|
      t.string :name
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
