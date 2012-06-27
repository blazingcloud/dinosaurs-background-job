class CreateDinosaurs < ActiveRecord::Migration
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :favorite_food
      t.integer :weight
      t.string :color
      t.integer :species_id

      t.timestamps
    end
  end
end
