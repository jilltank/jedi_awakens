class Planet < ActiveRecord::Base
	has_many :species
	has_many :characters, :through => :species
end
