class DriveIn
  attr_reader :name, :parked

  def initialize(name)
    @name = name
    @parked = []
  end

  def add_vehicle(vehicle)
    @parked << vehicle
  end
end