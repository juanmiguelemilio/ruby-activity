class Robot
  def initialize(name)
    @name = name.upcase
  end

  attr_reader :name

  def say_hello
   "Hello, I am #{name}. Your personal assistant."
  end

  def say_hi
    "Hi, I am #{name}. Your personal assistant."
  end
end

class PersonalAssistant < Robot
  def say_hello
    "Hello, I am #{name}. Your personal assistant"
  end
end

robot1 = Robot.new('b166er')
puts robot1.say_hello
puts robot1.say_hi