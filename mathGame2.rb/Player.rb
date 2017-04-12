class Player

  attr_accessor :lives, :decrement_lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrement_lives
    @lives -= 1
  end

end