class Cat

  attr_reader :sound, :name

  def initialize(name)
    @name = name
    @sound = "meow"
  end
end