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
		firstname = Character.find(rand(1..Character.count)).name.split(" ")[0]
		lastname = Character.find(rand(1..Character.count)).name.split(" ")[-1]
		@character = firstname + " " + lastname
	end

	def droid
		@droid = Droid.find(rand(1..Droid.count)).name
	end

	def planet
		@planet = Planet.find(rand(1..Planet.count)).name
	end

	def quote
		@quote = Quote.find(rand(1..Quote.count)).saying
	end

	def species
		@species = Species.find(rand(1..Species.count)).name
	end

	def vehicle
		@vehicle = Vehicle.find(rand(1..Vehicle.count)).name
	end

end
