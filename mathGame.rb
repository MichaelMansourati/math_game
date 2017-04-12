class Player

  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lives
    @lives
  end

end

player1 = Player.new('player1')
player2 = Player.new('player2')
player_array = [player1, player2]


class Rand_num

  attr_reader :roll

  def initialize
    @roll = rand(1..20)
  end

end

class Question

  attr_accessor :answer, :player, :ask, :lives

  def initialize(player)
    num1 = Rand_num.new.roll
    num2 = Rand_num.new.roll
    @ask = puts "hello, #{player} What is #{num1} plus #{num2}?"
    @answer = STDIN.gets.chomp
    puts answer
    if (answer == num1 + num2)
      puts "correct!"
    else
      puts player
      player.lives -= 1
      puts("incorrect!")
    end
  end
end

i = 0
while player1.lives > 0 && player2.lives > 0
  i += 1
  if i % 2 == 1
    q1 = Question.new(player1).ask
    if (player1.lives == 0)
      break
    end
  elsif i % 2 == 0
    q2 = Question.new(player2).ask
    if (player2.lives == 0)
      break
    end
  else
    puts "weird error???"
  end
end

class Game

end

class Turn

end


