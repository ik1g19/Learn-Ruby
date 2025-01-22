class Dog
  def talk
    puts 'Woof! My name is ' + @name
  end

  def initialize( aName )
    # Variables starting with @s are instance variables
    @name = aName
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


mydog = Dog.new('Bonzo')
yourdog = Dog.new('Fido')

mydog.talk
yourdog.talk

pyr = GreatPyrenees.new('Belle', 'wawwawawwawawaa!!!!')
pyr.talk
pyr.howl