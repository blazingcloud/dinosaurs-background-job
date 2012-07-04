class BatchesController < ApplicationController
  respond_to :html, :json, :js

  def query_batch
      @batch = Batch.find(params[:id])
      respond_with @batch
  end

  def show
    @batch = Batch.find(params[:id])
    @dinosaurs = @batch.dinosaurs
    respond_with @dinosaurs
  end
end
