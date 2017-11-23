require 'Bike.rb'
describe Bike do
  let(:bike) {Bike.new}
  it 'has a variable status which defaults to true' do
    expect(bike.working).to eq true
    bike.working = false
    expect(bike.working).to eq false
  end
end
