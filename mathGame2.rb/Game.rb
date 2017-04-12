require './Player.rb'
require './Question.rb'
require './Turn.rb'


class Game

  def initialize
    @player1 = Player.new('player1')
    @player2 = Player.new('player2')
    @players_array = []
    @players_array << @player1
    @players_array << @player2
  end

  def start_playing
    while still_going?(@players_array) == true
      current_player = Turn.whose_turn(@players_array)
      q = Question.new
      q.ask(current_player)
    end
    puts "game over!"
  end


  def still_going?(players)
    if players.any? {|p| p.lives == 0 }
      return false
    else
      return true
    end
  end
end