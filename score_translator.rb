require_relative 'score'

class ScoreTranslator
  
  def initialize(score)
    @score = score
    @score_map = [:love, :fifteen, :thirty, :forty]
  end
  
  def translate

    if @score.server <= 3 && @score.receiver <= 3
	    "#{@score_map[@score.server]} #{@score_map[@score.receiver]}"
	  else
	  	@score.server == @score.receiver ? "deuce" : advantage
    end
  end

  def advantage
  	"advantage #{@score.server < @score.receiver ? 'out' : 'in'}"
  end
  
end