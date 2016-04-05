class Create

	def initialize
		@character = character
		@droid = droid
		@planet = planet
		@quote = quote
		@species = species
		@vehicle = vehicle
	end

	def character
		foo = Character.all.length
		firstname = Character.find(rand(1..foo)).name.split(" ")[0]
		lastname = Character.find(rand(1..foo)).name.split(" ")[-1]
		@character = firstname + " " + lastname
	end

	def droid
		foo = Droid.all.length
		@droid = Droid.find(rand(1..foo)).name
	end

	def planet
		foo = Planet.all.length
		@planet = Planet.find(rand(1..foo)).name
	end

	def quote
		foo = Quote.all.length
		@quote = Quote.find(rand(1..foo)).saying
	end

	def species
		foo = Species.all.length
		@species = Species.find(rand(1..foo)).name
	end

	def vehicle
		foo = Vehicle.all.length
		@vehicle = Vehicle.find(rand(1..foo)).name
	end

end
