# All ojbects that aren't delcared as private is public by default

# Private
class Person
  def initialize(age)
    @age = age
  end

  # All lines of code below here will be private
  private 
  def get_age
    puts "I am #{@age} years old"
  end
end

ana = Person.new(25)
ana.get_age

