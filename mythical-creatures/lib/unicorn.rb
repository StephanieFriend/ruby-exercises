class Unicorn

  attr_reader :name,
              :color

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    return @color == "white"
  end

  def say(message)
    return "**;* " + message + " **;*"
  end
end