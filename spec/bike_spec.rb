require 'Bike.rb'
describe Bike do
  bike = Bike.new
  it 'has a variable status which defaults to true' do
    bike = Bike.new
    expect(bike.working).to eq true
    bike.working = false
    expect(bike.working).to eq false
  end
end
