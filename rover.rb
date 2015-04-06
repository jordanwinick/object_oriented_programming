class Rover
	attr_accessor :x, :y, :heading

	def initialize
		@x=gets(" ").to_i
		@y=gets(" ").to_i
		@heading=gets(1)
		gets
	end

	def read_instruction
		inst=gets(1)

		while !(inst=="\n")
			if inst=="M"
				move
			elsif inst=="L"||inst=="R"
				turn(inst)
			else
				puts "invalid instruction"
			end
			inst=gets(1)
		end
	end

	def move
		if @heading=="N"
			@y+=1
		elsif @heading=="S"
			@y-=1
		elsif @heading=="E"
			@x+=1
		elsif @heading=="W"
			@x-=1
		else
			puts "invalid direction"
		end
	end

	def turn(direction)
		if direction=="L"
			if @heading=="N"
				@heading="W"
			elsif@heading=="E"
				@heading="N"
			elsif@heading=="S"
				@heading="E"
			elsif@heading=="W"
				@heading="S"
			end
		else
			if @heading=="N"
				@heading="E"
			elsif@heading=="E"
				@heading="S"
			elsif@heading=="S"
				@heading="W"
			elsif@heading=="W"
				@heading="N"
			end
		end
	end

	def print_pos
		puts "#{@x} #{@y} #{@heading}"
	end
end

width=gets(" ").to_i
height=gets.to_i

r1=Rover.new
r1.read_instruction

r2=Rover.new
r2.read_instruction

r1.print_pos
r2.print_pos