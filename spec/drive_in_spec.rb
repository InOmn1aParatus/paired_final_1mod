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
  end
end