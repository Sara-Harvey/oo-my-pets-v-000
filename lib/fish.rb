class Fish
attr_accessor :pets, :mood, :owner

def initialize(name, mood = "nervous")
@name = name
@mood = mood
@pets << self
end

def name
  @name
end
end
