require './test/test_helper'
require './lib/passenger'
class PassengerTest < Minitest::Test
  def setup
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  def test_it_exists
    assert_instance_of Passenger, @charlie
    assert_instance_of Passenger, @taylor
  end

  def test_it_has_argument_attributes
    assert_equal "Charlie", @charlie.name
    assert_equal 18, @charlie.age
  end

  def test_it_can_check_if_its_an_adult
    assert @charlie.adult?
    refute @taylor.adult?
  end
end
