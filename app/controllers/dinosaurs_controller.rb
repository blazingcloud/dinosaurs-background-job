class DinosaursController < ApplicationController

  # GET /dinosaurs
  # GET /dinosaurs.json
  def index
    @dinosaurs = Dinosaur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dinosaurs }
    end
  end

  # GET /dinosaurs/1
  # GET /dinosaurs/1.json
  def show
    @dinosaur = Dinosaur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dinosaur }
    end
  end

  # GET /dinosaurs/new
  # GET /dinosaurs/new.json
  def new
    @dinosaur = Dinosaur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dinosaur }
    end
  end

  # GET /dinosaurs/1/edit
  def edit
    @dinosaur = Dinosaur.find(params[:id])
  end

  # POST /dinosaurs
  # POST /dinosaurs.json
  def create
    @dinosaur = Dinosaur.new(params[:dinosaur])

    respond_to do |format|
      if @dinosaur.save
        format.html { redirect_to @dinosaur, notice: 'Dinosaur was successfully created.' }
        format.json { render json: @dinosaur, status: :created, location: @dinosaur }
      else
        format.html { render action: "new" }
        format.json { render json: @dinosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dinosaurs/1
  # PUT /dinosaurs/1.json
  def update
    @dinosaur = Dinosaur.find(params[:id])

    respond_to do |format|
      if @dinosaur.update_attributes(params[:dinosaur])
        format.html { redirect_to @dinosaur, notice: 'Dinosaur was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dinosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinosaurs/1
  # DELETE /dinosaurs/1.json
  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy

    respond_to do |format|
      format.html { redirect_to dinosaurs_url }
      format.json { head :ok }
    end
  end

  def spawn_preview

  end
  # GET /spawn_dinosaurs
  def spawning_results
    puts "-----------------------spawning results-------------------------"
#    Delayed::Job.enqueue DinosaurJob.new()
    job = Dinosaur.delay.spawn_dinos(params[:dino])
    puts job.id
    puts params[:dino]
    flash[:notice] = "Spawning dinosaurs..."

  end

  # GET /spawning_done
  def spawning_done
    # puts @dino_info
  end


end
