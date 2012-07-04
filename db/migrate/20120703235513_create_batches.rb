class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :status

      t.timestamps
    end
  end
end
