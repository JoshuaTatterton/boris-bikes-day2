require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
  	@bike = []
  	@capacity = capacity
  end

  def release_bike
  	bike.each { |x| if x.working?; return bike.delete(x) end }
    fail "No bikes available" 
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