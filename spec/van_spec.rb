require 'Van'

describe Van do
  describe '#pick_up_broken' do
    let(:broken_bike) {double(:broken_bike, working: false)}
    it "removes broken bikes from the docking station" do
      ds = DockingStation.new
      ds.dock(broken_bike)
      garage = Garage.new
      subject.pick_up_broken(ds.broken_bikes, garage)
      expect(ds.broken_bikes).to be_empty
    end
    it "adds broken bikes to the garage" do
      ds = DockingStation.new
      ds.dock(broken_bike)
      garage = Garage.new
      subject.pick_up_broken(ds.broken_bikes, garage)
      garage = Garage.new
      expect(garage.fixing_area).to include(broken_bike)
    end
  end
end
