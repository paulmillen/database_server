class Memory
  attr_reader :data

  def initialize(params)
    @data = params
  end

  def self.create(params)
    @memory = Memory.new(params)
  end

  def self.instance
    @memory
  end

end
