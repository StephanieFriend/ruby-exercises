class Ogre

  attr_reader :name,
              :home,
              :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter = 0
    @swings = 0
    human.knocked_out = false
  end
end