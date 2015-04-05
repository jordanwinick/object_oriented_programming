class Person
	def initialize(name)
		@name=name
	end

	def greet
		puts "Hi my name is #{@name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end




christina = Student.new("Christina")

christina.greet

chris=Instructor.new("Chris")

chris.greet

chris.teach

christina.learn

