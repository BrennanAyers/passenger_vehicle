require './test/test_helper'
require './lib/vehicle'
require './lib/passenger'
class VehicleTest < Minitest::Test
  def setup
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
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

  def test_it_can_add_passengers
    @vehicle.add_passenger(@charlie)

    assert_equal [@charlie], @vehicle.passengers
  end
end
