class Thing
  # Create a getter and variable
  attr_reader :description
  attr_writer :description

  # Create a setter and variable
  attr_writer :name

  def initialize(aName, aDescription)
    @name = aName
    @description = aDescription
  end

  # get accessor for @name
  def name
    return @name.capitalize
  end
end

class Treasure < Thing  # Treasure descends from Thing

  # Creates a getter and setter simultaneously
  attr_accessor :value

  def initialize(aName, aDescription)
    super(aName, aDescription)
  end
end

t1 = Treasure.new("sword", "an Elvish weapon forged of gold")
t1.value = 800
puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
t1.value = 100
t1.description << " (now somewhat tarnished)"  # note << appends specified string to existing string
puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
