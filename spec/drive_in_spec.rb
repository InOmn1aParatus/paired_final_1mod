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
end