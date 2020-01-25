class Wizard

  MAX_SPELLS_BEFORE_NOT_RESTED = 3

  attr_reader :name,
              :bearded
  @spell_count

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spell_count = 0
  end

  def bearded?
    return @bearded
  end

  def incantation(spell)
    return "sudo " + spell
  end

  def rested?
    return @spell_count < MAX_SPELLS_BEFORE_NOT_RESTED
  end

  def cast(charm)
    @spell_count += 1
    return charm
  end
end