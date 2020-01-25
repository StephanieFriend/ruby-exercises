class Pirate

  MAX_CRIME_BEFORE_CURSED = 3

  attr_reader :name,
              :job,
              :booty
  @crime

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @crime = 0
    @booty = 0
  end

  def cursed?
    return @crime >= MAX_CRIME_BEFORE_CURSED
  end

  def commit_heinous_act
    @crime += 1
  end

  def rob
    return @booty += 100
  end
end