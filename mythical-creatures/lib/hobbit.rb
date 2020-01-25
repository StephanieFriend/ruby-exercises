class Hobbit

  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return @age > 32
  end

  def old?
    return @age > 100
  end

  def has_ring?
    return @name == "Frodo"
  end

  def is_short?
    return true
  end
end