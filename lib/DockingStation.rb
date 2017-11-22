require_relative 'Bike'
class DockingStation
  attr_reader :bike

  def initialize
    @bike = nil
    @has_bike = true
  end

  def release_bike
    if @has_bike == false
      fail "Sorry, no bikes!"
    else
      @has_bike = false
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end
end
