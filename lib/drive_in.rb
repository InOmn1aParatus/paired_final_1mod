class DriveIn
  attr_reader :name, :parked

  def initialize(name)
    @name = name
    @parked = []
  end
end