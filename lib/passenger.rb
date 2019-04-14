class Passenger
  attr_reader :name, :age

  def initialize(info)
    @name = info["name"]
    @age = info["age"]
  end

  def adult?
    true if age >= 18
  end
end
