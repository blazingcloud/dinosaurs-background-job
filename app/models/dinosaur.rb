class Dinosaur < ActiveRecord::Base
  belongs_to :species

  def self.spawn_dinos(dino_params)
    sleep 10
    dino_params.each do |dino |
      dino[:job_start_time]= start_time
    end
    Dinosaur.create(dino_params)
  end
end
