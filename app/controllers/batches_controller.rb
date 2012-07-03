class BatchesController < ApplicationController
  def query_batch
      @batch = Batch.find(params[:id])

      respond_to do |format|
        format.html
        format.json{
          puts "format json------------------------------"
 #         render :json => @batch.to_json
          render :json => "alert('hello')"
        }
      end
  end
end
