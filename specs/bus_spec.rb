require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class TestBus < MiniTest::Test


  def setup
    @passenger_1 = Person.new("Jack", 21)
    @passenger_2 = Person.new("Anna", 19)

    @bus = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("Tollcross")
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_total_passengers
    assert_equal(0, @bus.total_passengers)
  end

  def test_pick_up_passenger
    @bus.pick_up(@passenger_1)
    assert_equal(1, @bus.total_passengers)
  end

  def test_drop_off_passenger
    @bus.pick_up(@passenger_1)
    @bus.pick_up(@passenger_2)
    @bus.drop_off(@passenger_1)

    assert_equal(1, @bus.total_passengers)
  end

  def test_empty_bus
    @bus.pick_up(@passenger_1)
    @bus.pick_up(@passenger_2)
    @bus.empty_bus
    assert_equal(0, @bus.total_passengers)
  end

  def test_pick_up_from_stop
    queue = @bus_stop.add_person_to_queue(@passenger_2)
    @bus.pick_up(@passenger_1)
    @bus.pick_up_from_stop(queue)
    assert_equal(2, @bus.total_passengers)
  end
end
