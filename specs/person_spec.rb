require("minitest/autorun")
require("minitest/rg")

require_relative("../person")

class TestPerson < MiniTest::Test


  def setup
    @person_1 = Person.new("Jack", 21)
    @person_2 = Person.new("Anna", 19)
  end

  def test_get_person_name
    assert_equal("Jack", @person_1.name())
  end

end
