require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  context 'instantiation' do
    it 'exists' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle).to be_a(Vehicle)
    end

    it 'has attributes' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.year).to eq('2001')
      expect(vehicle.make).to eq('Honda')
      expect(vehicle.model).to eq('Civic')
    end
  end

  context 'methods' do
    it 'tells if car is speeding' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.speeding?).to eq(false)
    end
  end
end
