class Memory

  def initialize(params)
    @data = params
  end

  def return_value(params)
    key = get_param(params)
    @data[key]
  end

  def self.create(params)
    @memory = Memory.new(params)
  end

  def self.instance
    @memory
  end

  private

  def get_param(params)
    params.values[0]
  end

end
