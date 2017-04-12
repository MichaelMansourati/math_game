class Player

  attr_accessor :lives

  def lives
    @lives
  end

  def decrement_lives
    @lives -= 1
    if @lives == 0
      puts "#{player} has been eliminated"
      # Game should no longer recognize this player as part of the game
    else
      puts "#{player} has #{player.lives} lives remaining"
    end
  end

  def initialize
    @lives = 3
  end

end