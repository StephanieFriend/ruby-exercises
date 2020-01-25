class Stark

  attr_accessor :safe
  attr_reader :name,
              :location

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    return @safe
  end

  def house_words
    if !safe?()
      return "Winter is Coming"
    else
      return "The North Remembers"
    end
  end
end
