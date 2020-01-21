class Human

  attr_accessor :encounter_counter, :knocked_out
  attr_reader :name

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
     @encounter_counter % 3 == 0
  end

  def knocked_out?
    if ((@encounter_counter / 3) % 2 == 0) && @encounter_counter != 0
      @knocked_out = true
    end
  end
end