module Flight
  def fly
    puts "I'm a #{self.class}, I'm flying!"
  end 
end

class Animals
  attr_accessor :human, :name
  def initialize (human = false)
  @human = human 
  @name = name
  end 
end
class Mammal < Animals
  attr_accessor :mammary_glands, :hair, :num_legs
  def initialize (mammary_glands = true, hair = true)
    super(name)
    @mammary_glands = mammary_glands
    @hair = hair
    @num_legs = num_legs
  end
end
class Bird < Animals
  attr_accessor :wings, :lays_eggs
  def initialize (wings = true, lays_eggs = true)
    super(name)
    @wings = wings
    @lays_eggs = lays_eggs
  end
end
class Amphibian < Animals
  attr_accessor :warm_blooded
  def initialize (warm_blooded = true)
    super(name)
    @warm_blooded = warm_blooded
  end
end 
class Primate < Mammal
  def initialize 
    super(name, 2)
  end
end
class Bat < Mammal
  attr_accessor :wings
  def initialize (wings = true)
    super(name)
    @wings = wings 
  end
  include Flight
end
class Parrot < Bird
  def initialize
  super(name)
end
  include Flight
end
class Frog < Amphibian
  attr_accessor :webbed_feet
  def initialize (webbed_feet = true)
    super(name)
    @webbed_feet = webbed_feet  
  end
end
class Chimpanzee < Primate
  def initialize
  super(name)
end
end 
vampire = Bat.new()
vampire.fly
