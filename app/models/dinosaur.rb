class Dinosaur < ActiveRecord::Base
  belongs_to :species

  def self.spawn_dinos
    num_dinos = Dinosaur.count
    dino_info = {}
    dino_list = []
    1000.times do |n|
      dino_list << Dinosaur.create(:name => "Dino #{n + num_dinos}", :species_id => 1+rand(3))
    end
    new_num_dinos = Dinosaur.count - num_dinos

    dino_info[:dino_list] = dino_list
    dino_info[:new_num_dinos] = new_num_dinos
    dino_info
  end
end
