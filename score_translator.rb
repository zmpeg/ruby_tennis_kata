require_relative 'score'

class ScoreTranslator
  
  def initialize(score)
    @score = score
    @score_map = [:love, :fifteen, :thirty, :forty]
  end
  
  def translate
    s1 = @score_map[@score.server]
    s2 = @score_map[@score.receiver]

    "#{s1} #{s2}"
  end
  
end