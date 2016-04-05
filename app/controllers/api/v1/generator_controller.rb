class Api::V1::GeneratorController < ApplicationController
	respond_to :json

	def index
		respond_with Create.new.to_json
	end

end