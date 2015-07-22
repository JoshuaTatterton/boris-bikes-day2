require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
  	@bike = []
  	@capacity = DEFAULT_CAPACITY
  end

  def release_bike
  	fail "No bikes available" if empty?
  	bike.pop
  end

  def dock(i)
  	fail "Station is full" if full?
  	bike << i
  end

  private 

  attr_reader :bike

  def empty?
  	bike.empty?
  end

  def full?
  	bike.length >= DEFAULT_CAPACITY
  end

end