require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
  context 'instantiation' do
    it 'exists' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it 'has attributes' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end
  end

  context 'methods' do
    it 'returns true if adult and false if minor' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it 'tells if person is driving' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      expect(charlie.driver?).to eq(false)

      charlie.drive
      expect(charlie.driver?).to eq(true)
    end
  end
end