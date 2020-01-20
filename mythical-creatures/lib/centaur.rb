class Centaur
#class constant
  MAX_ACTIONS_BEFORE_CRANKY = 3
#identify external variables
  @attr_reader = attr_reader :name,
                             :breed,
                             :laying
  @attr_reader
  @action_count #identify internal variables

#assign all variables
  def initialize(name, breed)
    @name = name
    @breed = breed
    @action_count = 0
    @laying = false
  end

  def shoot
    if !cranky?() && !@laying
      @action_count += 1
      return "Twang!!!"
    else
      return "NO!"
    end
  end

  def run
    if !cranky?() && !@laying
      @action_count += 1
      return "Clop clop clop clop!!!"
    else
      return "NO!"
    end
  end

  def cranky?
    return @action_count >= MAX_ACTIONS_BEFORE_CRANKY
  end

  def sleep
    if !@laying
      return "NO!"
    else
      @action_count = 0
    end
  end

  def laying?
    return @laying
  end

  def standing?
    return !@laying
  end

  def lay_down
    @laying = true
  end

  def stand_up
    @laying = false
  end

  def drink
    if standing?()
      if cranky?()
        @action_count = 0
        return
      else
        return "Stand back! I'm going to be sick!"
      end
    end
  end
end
