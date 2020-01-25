class Werewolf

  attr_reader :name,
              :location,
              :victim_count
  @human
  @hungry

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @victim_count = 0
  end

  def human?
    return @human
  end

  def wolf?
    return !@human
  end

  def change!
    @human = !@human
    @hungry = true
  end

  def hungry?
    return @hungry
  end

  def consume(victim)
    if !@human
      @victim_count += 1
      @hungry = false
      victim.status = :dead
    end
  end
end