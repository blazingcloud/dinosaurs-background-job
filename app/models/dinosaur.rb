class Dinosaur < ActiveRecord::Base
  belongs_to :species

  def self.spawn_dinos(dino_params)
    sleep 10
    puts "after sleep"
    puts dino_params
    #start_time = Time.now.to_i
    #dino_params.each do |dino|
    #  dino[:job_start_time] = start_time
    #end
    puts 'before create'
    Dinosaur.create(dino_params)
  end
end
