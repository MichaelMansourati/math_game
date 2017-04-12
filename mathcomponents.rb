class Rand_num

  attr_reader :roll

  def initialize
    @roll = rand(1..20)
  end

end

r = Rand_num.new

puts r.roll