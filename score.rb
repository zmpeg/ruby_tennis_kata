
class Score
  attr_reader :server, :receiver
  
  def initialize
    @server = :love
    @receiver = :love
  end
  
  def to_s
    "#{server} #{receiver}"
  end
  
  def give_point(player)
    
  end
  
end