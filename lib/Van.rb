require_relative 'DockingStation'
require_relative 'Garage'
require_relative 'Bike'

class Van
  def pick_up_broken(dockingStation, garage)
    (dockingStation.broken_bikes).each do |x|
      garage.fixing_area << x
    end
  end
end
