class AddIndexToDinosaurs < ActiveRecord::Migration
  def change
    add_index :dinosaurs, :name, :unique => true
  end
end
