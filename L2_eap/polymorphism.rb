# Using inheritance
class People
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def say_hello
    puts "Hello. I am #{@first_name}."
  end
end

class GoodPeople < People
  def say_hello
    puts "Hello Good People. I am #{@first_name}."
  end
end

class BadPeople < People
  def say_hello
    puts "Hello Bad People. I am #{@first_name}."
  end
end

mj = GoodPeople.new("MJ", "Aguirre", 24)
mj.say_hello
jm = BadPeople.new("JM", "Aguirre", 24)
jm.say_hello
mjjm = People.new("MJJM", "Aguirre", 24)
mjjm.say_hello


# Using duck-typing
class Animal 
  def make_sound(animal)
      puts animal.sound
  end
end

class DuckThatQuack
  def sound
    "Quack"
  end
end

class DuckThatHonk
  def sound
    "Honk"
  end
end

class DuckThatChoosesViolence
  def sound
    "Draws knife"
  end
end

animal = Animal.new
animal.make_sound(DuckThatQuack.new)
animal.make_sound(DuckThatHonk.new)
animal.make_sound(DuckThatChoosesViolence.new)