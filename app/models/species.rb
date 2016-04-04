class Species < ActiveRecord::Base
	belongs_to :planet
	has_many :characters
end
