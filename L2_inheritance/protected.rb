class Animal
  def initialize(age)
    @age = age
  end

  def < (animal)
    age < (animal.age)
  end

  protected

  def age
    @age
  end
end

fido = Animal.new(3)
cat = Animal.new(2)
fide = Animal.new(3)
# puts fido < fide
cat.age

