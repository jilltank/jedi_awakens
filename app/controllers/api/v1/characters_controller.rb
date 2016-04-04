class Api::V1::CharactersController < ApplicationController
	respond_to :json

	def index
		respond_with Character.all
	end

	def show
		respond_with Character.find(params[:id])
	end

	def create
		respond_with Character.create(character_params)
	end

	def update
		respond_with Character.update(params[:id], character_params)
	end

	def destroy
		respond_with Character.destroy(params[:id])
	end

	private

		def character_params
			params.require(:character).permit(:name, :species_id)
		end

end