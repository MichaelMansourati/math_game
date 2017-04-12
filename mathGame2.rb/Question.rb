class Question

  attr_accessor :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(player)
    puts "---NEW QUESTION---"
    puts "#{player.name}: what is #{@num1} + #{@num2}?"
    @answer = gets.chomp.to_i
    if (@answer == @num1 + @num2)
      puts "correct!"
    else
      player.decrement_lives
      puts "incorrect! #{player.name} has #{player.lives} lives left."
    end
  end
end