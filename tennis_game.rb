
class TennisGame
  attr_reader :players
  
  def initialize(players)
    @players = players
    @score = new Score()
  end

  def win_the_ball(player)
    @scores[player] = balls_won(player) +  1
  end
  
  def score
    ScoreTranslator.translate(@scores)
  end
  
  def balls_won(player)
    @scores[player] || 0
  end
  
end