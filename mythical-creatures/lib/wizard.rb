class Wizard

  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo " + "#{spell}"
  end

  def rested?
    @spell_count < 3
  end

  def cast(charm)
    @spell_count += 1
    return charm
  end
end