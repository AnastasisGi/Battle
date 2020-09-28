class Player

DEFAULT_LIFE = 60

attr_reader:name, :hit_points

def initialize(name, hit_points=DEFAULT_LIFE)
@name = name
@hit_points = hit_points
end

def attack(player)
  player.receive_damage
end

def receive_damage
  @hit_points -= 10
end

end
