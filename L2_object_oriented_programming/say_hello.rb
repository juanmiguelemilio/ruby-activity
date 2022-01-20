class People
	attr_reader :name, :age
	attr_writer :name
	attr_accessor :name
	def initialize(name, age)
		@name = name
		@age = age
	end

	def say_hello
		puts "Hello #{@name}!"
	end

	def name
		puts "#{@name}"
	end

	# SETTER
	def name=(new_name)
		@name = new_name
	end

end

people = People.new('MJ', 24)

# PRINTING
# people.say_hello
# people.name

# GETTER
# puts people.name
# puts people.age

# SETTER
# people.name = 'JM'
# puts people.name