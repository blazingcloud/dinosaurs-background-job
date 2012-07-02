class DinosaurJob < Struct.new(:dino_array)
  def perform
     time_now = Time.now.to_i
     Dinosaur.spawn_dinos(dino_array, time_now)

  end

  def success

  end

  def failure

  end

  def error

  end

end
