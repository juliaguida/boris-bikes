require_relative "bike"
class DockingStation 
  attr_reader :docked
  def dock(bike)
    @docked = bike
  end

  def release_bike
    Bike.new
  end
end