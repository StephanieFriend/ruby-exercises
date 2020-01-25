class Direwolf

  MAX_STARKS_IT_CAN_PROTECT = 2

  attr_reader :name,
              :home,
              :size,
              :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if (@home == stark.location) && (@starks_to_protect.length < MAX_STARKS_IT_CAN_PROTECT)
      @starks_to_protect << stark
      stark.safe = true
    end
  end

  def hunts_white_walkers?
    return !(@starks_to_protect.length > 0)
  end

  def leaves(stark)
    if !@starks_to_protect.include?(stark)
      return stark
    else
      @starks_to_protect.delete(stark)
      stark.safe = false
    end
  end
end
