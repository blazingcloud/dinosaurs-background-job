class Dinosaur < ActiveRecord::Base
  belongs_to :species
  belongs_to :batch

  def self.spawn_dinos(dino_params, batch_id)
    sleep 10 # pretend that this method takes a long time
    dino_params.each do |dino|
      dino["batch_id"] = batch_id
    end
    Dinosaur.create(dino_params)
    batch = Batch.find_by_id(batch_id)
    batch.status = "success"
    batch.save!

  end
end
