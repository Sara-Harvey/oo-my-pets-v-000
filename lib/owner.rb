class Owner
attr_accessor :name, :fish, :dog, :cat, :mood
attr_reader :species, :pets

@@all = []
@@count = 0

def initialize(name)
@pets = {fishes: [], cats: [], dogs: []}
@@all << self
@@count +=1
@species = "human"
end

def self.all
  @@all
end

def Owner.count
  @@count
end

def self.reset_all
  @@count = 0
end

def say_species
  "I am a human."
end

def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
  @pets
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
  @pets
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
  @pets
end

def walk_dogs
  buy_dog(name)
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  buy_cat(name)
  @pets[:cats].each do |cat|
    cat.mood = "happy"
end 
end

def feed_fish
  buy_fish(name)
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
end
end

def sell_pets
  buy_fish(name)
  buy_dog(name)
  buy_cat(name)
@pets#.each do |key, value|
  #pets.mood = "nervous"
end
end
  
end
