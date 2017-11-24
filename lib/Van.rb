require_relative 'DockingStation'
require_relative 'Garage'

class Van
  def pick_up_broken(dockingStation, garage)
    (dockingStation.broken_bikes).each do |x|
      garage.fixing_area << x
    end
  end
end
