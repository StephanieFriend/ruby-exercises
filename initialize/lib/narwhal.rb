class Narwhal

  attr_reader :name, :cute, :weight

  def initialize(narwhal_info)
    @cute = narwhal_info[:cute]
    @weight = narwhal_info[:weight]
    @name = narwhal_info[:name]
  end

  def cute?
    @cute
  end
end