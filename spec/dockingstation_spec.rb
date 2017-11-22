require "DockingStation.rb"

describe DockingStation do
  subject { described_class.new }

  it { is_expected.to respond_to :release_bike }

  it "raises an error if no bike" do
    subject.release_bike
    expect { subject.release_bike }.to raise_error("Sorry, no bikes!")
  end

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
