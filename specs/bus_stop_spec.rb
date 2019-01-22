require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../bus")
require_relative("../person")

class TestBusStop < MiniTest::Test


  def setup
    @passenger_1 = Person.new("Jack", 21)
    @passenger_2 = Person.new("Anna", 19)

    @bus_stop = BusStop.new("Tollcross")

  end

  def test_bus_stop_name
    assert_equal("Tollcross", @bus_stop.name)
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@passenger_1)
    assert_equal(1, @bus_stop.queue.count())   
  end


end
