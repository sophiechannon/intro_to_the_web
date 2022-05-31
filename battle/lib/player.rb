class Player
  DEFAULT_HIT_POINTS = 100
  
  def initialize(name, points = DEFAULT_HIT_POINTS) 
    @name = name
    @points = points
  end 

  def name
    @name
  end

  def points
    @points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @points -= 10
  end
end 

def hello
  "hello"
end