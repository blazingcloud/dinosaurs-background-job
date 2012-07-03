class Dinosaur < ActiveRecord::Base
  belongs_to :species
  belongs_to :batch

  def self.spawn_dinos(dino_params, batch_id)
    sleep 10
    puts "after sleep"
    puts dino_params
    dino_params.each do |dino|
      dino["batch_id"] = batch_id
    end
    puts "after adding batch ids, now params are..."
    puts dino_params
    puts 'before create'
    Dinosaur.create(dino_params)
    batch = Batch.find_by_id(batch_id)
    batch.status = "success"
    batch.save!

  end
end
