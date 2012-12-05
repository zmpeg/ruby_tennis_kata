
class TennisGame
  
  def win_the_ball(player)
    @won_the_ball = player
  end
  
  def score(player)
    player == @won_the_ball ? 1 : 0
  end
  
end