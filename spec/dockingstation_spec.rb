require "DockingStation.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to (:dock).with(1).argument }

  it "Creates a new working bike object" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
