class Monkey

  attr_reader :name, :favorite_food, :type

  def initialize(monkey_info = [name, type, favorite_food ])
    @name = monkey_info[0]
    @type = monkey_info[1]
    @favorite_food = monkey_info[2]
  end
end