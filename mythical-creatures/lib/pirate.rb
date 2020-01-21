class Pirate

  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @crime = 0
    @booty = 0
  end

  def cursed?
    @crime >= 3
  end

  def commit_heinous_act
    @crime += 1
  end

  def rob
    @booty += 100
  end
end