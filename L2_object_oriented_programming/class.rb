class Animal
	def initialize(name, color, age)
		@name = name
		@color = color
		@age = age
	end

	def walk
		puts "hey! #{@name}, let's walk!"
	end
end

# dog = Animal.new('Doggo', 'white', 1)
# dog.walk

# dog = Animal.new()
# dog.walk('browny')
