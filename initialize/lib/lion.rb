class Lion

  attr_reader :sound, :name

  def initialize(lion_info)
    @name = lion_info[:name]
    @sound = lion_info[:sound]
  end
end