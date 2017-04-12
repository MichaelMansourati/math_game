class Turn

  @@i = 1
  def self.whose_turn(players)
    @@i += 1
    if @@i == players.length
      @@i = 0
    end
  return players[@@i]
  end


end
