class Medusa

  MAX_ALLOWED_VICTIMS = 3

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.length >= MAX_ALLOWED_VICTIMS
      old_victim = @statues.delete_at(0)
      old_victim.stoned = false
    end
    victim.stoned = true
    @statues << victim
  end
end