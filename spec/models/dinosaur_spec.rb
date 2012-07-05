require 'spec_helper'

describe Dinosaur do
  it {should belong_to(:batch)}
  it {should belong_to(:species)}




  context "scope" do
    it ".spawn_dinos" do
      batch = Batch.create()
      dino_params = [{:name => 'Quinn', :species_id => 1},{:name => 'Dean', :species_id => 3},{:name => 'Lizzy', :species_id => 2}]
      batch_id = batch.id

      Dinosaur.spawn_dinos(dino_params, batch_id)
    end
  end
end