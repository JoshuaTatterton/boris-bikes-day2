require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
  	@bike = []
  	@capacity = capacity
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
  	bike.length >= @capacity
  end

end