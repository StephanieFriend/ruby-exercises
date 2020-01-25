class Dragon

  AMOUNT_OF_FOOD_NEEDED_TO_MAKE_NOT_HUNGRY = 3

  attr_reader :name,
              :rider,
              :color
  @food

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food = 0
  end

  def hungry?
    return !(@food >= AMOUNT_OF_FOOD_NEEDED_TO_MAKE_NOT_HUNGRY)
  end

  def eat
    return @food += 1
  end
end