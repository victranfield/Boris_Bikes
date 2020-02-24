require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
    attr_accessor :capacity
    attr_reader :bikes
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end
end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(b)
    # We need to return the bike we dock
    # Use an instance variable to store the bike
    # in the 'state' of this instance
    fail 'Docking station full' if full?
    @bikes << b
  end

    # let's add to our #bike method to return the
    # bike we docked

    private

    def full?
      @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end
