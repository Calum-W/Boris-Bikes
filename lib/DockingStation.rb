require_relative 'Bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bike.working ? @bikes << bike : @broken_bikes << bike
  end

  private
  def full?
    @bikes.size >= @capacity
  end

  def empty?
    @bikes.size == 0
  end
end
