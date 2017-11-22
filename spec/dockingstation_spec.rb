require "DockingStation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "Creates a new working bike object" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
