class Person

  attr_accessor :stoned
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    return @stoned
  end
end