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

  def list_minors
  #   @parked.map do |vehicle|
  #     minors = vehicle.passengers.find_all do |passenger|
  #       !passenger.adult?
  #     end
  #     minors.map do |minor|
  #       minor.name
  #     end
  #   end.flatten
    minors = []
    @parked.each do |vehicle|
      vehicle.passengers.each do |passenger|
        minors << passenger.name if !passenger.adult?
      end
    end
    minors
  end
end
