
class Score
  attr_reader :server, :receiver
  
  def initialize
    @receiver = @server = 0
  end
  
  def point_for(player)
    var = :"@#{player}"
    instance_variable_set(var, instance_variable_get(var) + 1)
  end
  
end