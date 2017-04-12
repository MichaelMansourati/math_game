class Question

  def answer
    @answer = gets.chomp
  end

  def ask(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{player}, what is #{num1} + #{num2}?"
    @answer
