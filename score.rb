
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

  def winner?
    [:receiver, :server].permutation(2).to_a.each do |players|
      player0_score = instance_variable_get(:"@#{players[0]}")
      player1_score = instance_variable_get(:"@#{players[1]}")
      return players[0] if player0_score >= 4 && player1_score <= player0_score - 2
    end
    false
  end
  
end