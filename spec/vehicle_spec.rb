require 'rspec'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  context 'instantiation' do
    before :each do
      @vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    end
    it 'exists' do
      expect(@vehicle).to be_a(Vehicle)
    end

    it 'has attributes' do
      expect(@vehicle.year).to eq('2001')
      expect(@vehicle.make).to eq('Honda')
      expect(@vehicle.model).to eq('Civic')
    end

    it 'starts with no passengers' do
      expect(@vehicle.passengers).to eq([])
    end
  end

  context 'methods' do
    it 'tells if car is speeding' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.speeding?).to eq(false)
    end

    it 'speeds up' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.speeding?).to eq(false)

      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end
  end
end
