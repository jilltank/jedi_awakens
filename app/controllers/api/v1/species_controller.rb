class Api::V1::SpeciesController < ApplicationController
	respond_to :json

	def index
		respond_with Species.all
	end

	def show
		respond_with Species.find(params[:id])
	end

	def create
		respond_with Species.create(species_params)
	end

	def update
		respond_with Species.update(params[:id], species_params)
	end

	def destroy
		respond_with Species.destroy(params[:id])
	end

	private

		def species_params
			params.require(:species).permit(:name, :planet_id)
		end

end