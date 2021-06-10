require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
  context 'instantiation' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)
  end
end