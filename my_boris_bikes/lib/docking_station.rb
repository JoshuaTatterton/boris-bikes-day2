require_relative 'bike'

class DockingStation
  def initialize
  	@bike = []
  end

  def release_bike
  	fail "No bikes available" if @bike.length <= 0
  	 @bike.pop
  end

  def dock(i)
  	fail "Station is full" if @bike.length >= 20
  	@bike << i
  end
end