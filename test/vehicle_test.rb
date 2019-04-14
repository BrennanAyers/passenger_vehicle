require './test/test_helper'
require './lib/vehicle'
class VehicleTest < Minitest::Test
  def setup
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end

  def test_it_exists
    assert_instance_of Vehicle, @vehicle
  end

  def test_it_has_argument_attributes
    assert_equal "2001", @vehicle.year
    assert_equal "Honda", @vehicle.make
    assert_equal "Civic", @vehicle.model
  end

  def test_it_knows_if_its_speeding
    refute @vehicle.speeding?

    @vehicle.speed
    assert @vehicle.speeding?
  end

  def test_it_starts_with_no_passengers
    assert_empty @vehicle.passengers
  end
end
