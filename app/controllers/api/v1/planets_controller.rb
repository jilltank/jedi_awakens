class Api::V1::PlanetsController < ApplicationController
	respond_to :json
	before_action :doorkeeper_authorize!

	def index
		respond_with Planet.all
	end

	def show
		respond_with Planet.find(params[:id])
	end

	# The rest of these methods are being kept for potential future iterations

	def create
		respond_with Planet.create(planet_params)
	end

	def update
		respond_with Planet.update(params[:id], planet_params)
	end

	def destroy
		respond_with Planet.destroy(params[:id])
	end

	private

		def planet_params
			params.require(:planet).permit(:name)
		end

end