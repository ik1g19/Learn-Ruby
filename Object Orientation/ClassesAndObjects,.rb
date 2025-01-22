class Dog

  # Static variables (class variables) are @@
  @@num_dogs = 0

  # Static methods
  def Dog.showInfo
    puts "This is a class method. Number of dogs = " + @@num_dogs.to_s
  end
  
  def talk
    puts 'Woof! My name is ' + @name + ' and I am number ' + @@num_dogs.to_s
  end

  def initialize( aName )
    # Variables starting with @s are instance variables
    @name = aName
    @@num_dogs += 1
  end
end


# Inheritance

class GreatPyrenees < Dog
  def howl
    puts @howl
  end

  def initialize(aName, aHowl)
    super(aName)
    @howl = aHowl
  end
end

Dog.showInfo

mydog = Dog.new('Bonzo')

mydog.talk

yourdog = Dog.new('Fido')

yourdog.talk

pyr = GreatPyrenees.new('Belle', 'wawwawawwawawaa!!!!')
pyr.talk
pyr.howl

Dog.showInfo