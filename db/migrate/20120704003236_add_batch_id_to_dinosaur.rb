class AddBatchIdToDinosaur < ActiveRecord::Migration
  def change
    add_column :dinosaurs, :batch_id, :integer
  end
end
