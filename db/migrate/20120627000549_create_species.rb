class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :scientific_name
      t.string :common_name
      t.string :era

      t.timestamps
    end
  end
end
