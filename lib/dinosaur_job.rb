class DinosaurJob < Struct.new(:dino_array)
  def perform
     puts "----------------------------performing-------------------------------------------"
     time_now = Time.now.to_i
     Dinosaur.spawn_dinos(dino_array, time_now)

  end

  def success
    puts "success!"
    flash[:notice]= 'Success!'
  end

  def failure
    puts "failure!"
    flash[:notice]='Failure!'
  end

  def error
    puts "error!"
    flash[:notice]='Error!'
  end

end
