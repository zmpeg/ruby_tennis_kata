
class Score
  attr_reader :server, :receiver
  
  def initialize(server = 0, receiver = 0)
    @receiver = receiver
    @server = server
  end
  
  def point_for(player)
    throw "Invalid player #{player}" unless [:server, :receiver].include?(player)
    var = :"@#{player}"
    instance_variable_set(var, instance_variable_get(var) + 1)
  end
  
end