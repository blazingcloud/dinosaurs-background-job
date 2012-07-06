require 'spec_helper'

describe Dinosaur do
  it {should belong_to(:batch)}
  it {should belong_to(:species)}


  let(:batch) do
    Batch.create()
  end

  let(:dino_params) do
    [{:name => 'Quinn', :species_id => 1},{:name => 'Dean', :species_id => 3},{:name => 'Lizzy', :species_id => 2}]
  end

  let(:batch_id) do
    batch.id
  end

  context "scope" do
    it ".spawn_dinos" do
      Dinosaur.spawn_dinos(dino_params, batch_id)
    end

  end
end