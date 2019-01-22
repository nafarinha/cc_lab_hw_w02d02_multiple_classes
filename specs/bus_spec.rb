require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")

class TestBus < MiniTest::Test


  def setup
    @passenger_1 = Person.new("Jack", 21)
    @passenger_2 = Person.new("Anna", 19)

    @bus = Bus.new(22, "Ocean Terminal")

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

end
