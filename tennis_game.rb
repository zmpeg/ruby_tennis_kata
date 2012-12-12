require_relative 'score_translator'

class TennisGame
  attr_reader :players
  
  def initialize(players)
    @players = players
    @score = Score.new()
  end

  def win_the_ball(player)
    @score.winner? || @score.point_for([:server, :receiver][@players.index(player)])
  end
  
  def score
    ScoreTranslator.new(@score).translate
  end
  
end