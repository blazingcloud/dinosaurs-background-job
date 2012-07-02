class AddJobStartTimeToDinosaurs < ActiveRecord::Migration
  def change
    add_column :dinosaurs, :job_start_time, :integer
  end
end
