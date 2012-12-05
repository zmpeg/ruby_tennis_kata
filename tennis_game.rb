
class TennisGame
  attr_reader :players
  
  def initialize(players)
    @players = players
    @scores = {}
    @score_map = [:love, :fifteen, :thirty, :forty]
  end

  def win_the_ball(player)
    @scores[player] = balls_won(player) +  1
  end
  
  def score(player)
    @score_map[balls_won(player)]
  end
  
  def balls_won(player)
    @scores[player] || 0
  end
  
end