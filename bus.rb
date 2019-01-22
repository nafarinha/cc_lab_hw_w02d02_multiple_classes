class Bus

  attr_reader :route_number, :destination
  #: 22/01/2019, 16:58:37 There's no need to have attr_accessor for passengers
  #attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
   return "Brum brum"
  end

  def total_passengers
    return @passengers.count()
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty_bus
    @passengers = []
  end

  def pick_up_from_stop(queue)
    for person in queue
      pick_up(person)
    end
  end

end
