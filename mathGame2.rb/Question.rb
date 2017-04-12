class Question

  attr_accessor :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(player)
    puts "#{player.name}, what is #{@num1} + #{@num2}?"
    @answer = gets.chomp.to_i
    if (@answer == @num1 + @num2)
      puts "correct!"
    else
      puts "incorrect!"
      player.decrement_lives
    end
  end
end