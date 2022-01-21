class Animal
  def speak
    "Hello!"
  end
end

# Subclass
# class GoodDog < Animal
# end

# Super
# class GoodDog < Animal
#   def speak
#     # "Hi!"
#     super + " from GoodDog class"
#   end
# end


sparky = GoodDog.new
puts sparky.speak

