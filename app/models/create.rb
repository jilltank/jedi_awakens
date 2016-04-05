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
		foo = Character.count
		firstname = Character.find(rand(1..foo)).name.split(" ")[0]
		lastname = Character.find(rand(1..foo)).name.split(" ")[-1]
		@character = firstname + " " + lastname
	end

	def droid
		foo = Droid.count
		@droid = Droid.find(rand(1..foo)).name
	end

	def planet
		foo = Planet.count
		@planet = Planet.find(rand(1..foo)).name
	end

	def quote
		foo = Quote.count
		@quote = Quote.find(rand(1..foo)).saying
	end

	def species
		foo = Species.count
		@species = Species.find(rand(1..foo)).name
	end

	def vehicle
		foo = Vehicle.count
		@vehicle = Vehicle.find(rand(1..foo)).name
	end

end
