
class TennisGame
  
  def initialize
    @scores = {}
  end
  
  def win_the_ball(player)
    @scores[player] = (@scores[player] && @scores[player] + 1) ||  1
  end
  
  def score(player)
    @scores[player] || 0
  end
  
end