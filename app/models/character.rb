class Character < ActiveRecord::Base
	belongs_to :species
	has_many :droids
	has_many :vehicles
end
