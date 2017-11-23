require "DockingStation.rb"

describe DockingStation do
  subject { described_class.new }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike).include?(bike)).to eq true
    end
    it "raises an error when the dock is already full" do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
    end
    it 'returns an array' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to be_a Array
    end
  end

end
