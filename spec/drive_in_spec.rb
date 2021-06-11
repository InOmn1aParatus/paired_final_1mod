require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/drive_in'

RSpec.describe DriveIn do
  context 'instantiation' do
    it 'exists' do
      drive_in = DriveIn.new('Eldritch Drive-in')
      expect(drive_in).to be_a(DriveIn)
    end

    it 'has attributes' do
      drive_in = DriveIn.new('Eldritch Drive-in')
      expect(drive_in.name).to eq('Eldritch Drive-in')
    end

    it 'starts with no vehicles' do
      drive_in = DriveIn.new('Eldritch Drive-in')
      expect(drive_in.parked).to eq([])
    end
  end

  context 'methods' do
    it 'adds vehicles to the lot' do
      vehicle1 = Vehicle.new('2001', 'Honda', 'Civic')
      vehicle2 = Vehicle.new('2015', 'Hyundai', 'Sonata')
      drive_in = DriveIn.new('Eldritch Drive-in')
      drive_in.add_vehicle(vehicle1)
      drive_in.add_vehicle(vehicle2)

      expect(drive_in.parked).to eq([vehicle1, vehicle2])
    end

    it 'lists vehicles with multiple passengers' do
      vehicle1 = Vehicle.new('2001', 'Honda', 'Civic')
      vehicle2 = Vehicle.new('2015', 'Hyundai', 'Sonata')
      charlie = Passenger.new({ 'name' => 'Charlie', 'age' => 18 })
      taylor = Passenger.new({ 'name' => 'Taylor', 'age' => 12 })
      timmy = Passenger.new({ 'name' => 'Timmy', 'age' => 16 })
      vehicle1.add_passenger(charlie)
      vehicle1.add_passenger(taylor)
      vehicle2.add_passenger(timmy)
      drive_in = DriveIn.new('Eldritch Drive-in')
      drive_in.add_vehicle(vehicle1)
      drive_in.add_vehicle(vehicle2)

      expect(drive_in.list_carpools).to eq([vehicle1])
    end

    it 'lists passengers under 18' do
      vehicle1 = Vehicle.new('2001', 'Honda', 'Civic')
      vehicle2 = Vehicle.new('2015', 'Hyundai', 'Sonata')
      charlie = Passenger.new({ 'name' => 'Charlie', 'age' => 18 })
      taylor = Passenger.new({ 'name' => 'Taylor', 'age' => 12 })
      timmy = Passenger.new({ 'name' => 'Timmy', 'age' => 16 })
      vehicle1.add_passenger(charlie)
      vehicle1.add_passenger(taylor)
      vehicle2.add_passenger(timmy)
      drive_in = DriveIn.new('Eldritch Drive-in')
      drive_in.add_vehicle(vehicle1)
      drive_in.add_vehicle(vehicle2)

      expect(drive_in.list_minors).to eq(["Charlie", "Timmy"])
    end
  end
end