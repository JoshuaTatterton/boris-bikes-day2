require_relative 'bike'

class DockingStation
  def release_bike
  	fail "No bikes available" unless @bike
  	 @bike
  end

  def dock(i)
  	fail "Station is full" if @bike
  	@bike = i
  end
end