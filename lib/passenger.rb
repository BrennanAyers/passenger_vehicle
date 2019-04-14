class Passenger
  attr_reader :name, :age

  def initialize(info)
    @name = info["name"]
    @age = info["age"]
    @driver = false
  end

  def adult?
    return true if age >= 18 
    false if age < 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end
