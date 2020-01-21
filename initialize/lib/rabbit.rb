class Rabbit

  attr_reader :name, :num_syllables

  def initialize(rabbit_info)
    @name = rabbit_info[:name]
    @num_syllables = rabbit_info[:num_syllables]
  end

  def name
    if @num_syllables != 2
      @name
    else
      @name + " Rabbit"
    end
  end
end