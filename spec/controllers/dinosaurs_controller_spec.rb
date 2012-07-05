require 'spec_helper'

describe DinosaursController do
  describe 'spawning_results' do
    before do
      Delayed::Worker.delay_jobs = false
    end

    let(:dino_1) do
      {:name => 'Quinn', :species_id => 1}
    end

    let(:dino_2) do
      {:name => 'Dean', :species_id => 3}
    end

    let(:dino_3) do
      {:name => 'Lizzy', :species_id => 2}
    end

    it "creates dinos" do
      expect{post 'spawning_results', :dino=> [dino_1,dino_2,dino_3]}.to change(Dinosaur, :count).by(3)
    end

    it "creates a batch" do
      expect{post 'spawning_results', :dino=> [dino_1,dino_2,dino_3]}.to change(Batch, :count).by(1)
    end


    it "should create a batch with status success" do
      post 'spawning_results', :dino=> [dino_1,dino_2,dino_3]
      Batch.find(1).status.should == 'success'
    end

  end
end