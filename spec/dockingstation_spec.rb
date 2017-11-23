require "DockingStation.rb"

describe DockingStation do
  subject { described_class.new }
  let(:bike) {Bike.new}

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock bike }
      expect{ docking_station.dock bike }.to raise_error 'Docking station full'
    end

    it 'has a default capacity' do
      expect(DockingStation::DEFAULT_CAPACITY == subject.capacity).to eq true
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "doesn't release a broken bike" do
      broken_bike = Bike.new
      broken_bike.working = false
      subject.dock(broken_bike)
      expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end

  describe '#dock' do
    it 'docks something' do
      expect(subject.dock(bike).include?(bike)).to eq true
    end
    it "raises an error when the dock is already full" do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
    it 'accepts a broken bike' do
      broken_bike = Bike.new
      broken_bike.working = false
      expect(subject.dock(broken_bike).include?(broken_bike)).to eq true
    end

    it 'returns an array' do
      subject.dock(bike)
      expect(subject.bikes).to be_a Array
    end
  end

end
