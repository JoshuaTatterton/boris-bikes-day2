require_relative 'bike'

class DockingStation
  def initialize
  	@bike = []
  end

  def release_bike
  	fail "No bikes available" if empty?
  	 @bike.pop
  end

  def dock(i)
  	fail "Station is full" if full?
  	@bike << i
  end

  private 

  def empty?
  	@bike.empty?
  end

  def full?
  	@bike.length >= 20
  end

end