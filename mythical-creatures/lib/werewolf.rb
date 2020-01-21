class Werewolf

  attr_reader :name, :location, :victim_count

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @victim_count = 0
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = true
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if !@human
      @victim_count += 1
      @hungry = false
      victim.status = :dead
    end
  end
end