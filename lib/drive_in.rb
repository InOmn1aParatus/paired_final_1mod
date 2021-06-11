class DriveIn
  attr_reader :name, :parked

  def initialize(name)
    @name = name
    @parked = []
  end

  def add_vehicle(vehicle)
    @parked << vehicle
  end

  def list_carpools
    @parked.find_all do |vehicle|
      vehicle.passengers.count > 1
    end
  end
end