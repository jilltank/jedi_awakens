class Api::V1::VehiclesController < ApplicationController
	respond_to :json

	def index
		respond_with Vehicle.all
	end

	def show
		respond_with Vehicle.find(params[:id])
	end

	# The rest of these methods are being kept for potential future iterations

	def create
		respond_with Vehicle.create(vehicle_params)
	end

	def update
		respond_with Vehicle.update(params[:id], vehicle_params)
	end

	def destroy
		respond_with Vehicle.destroy(params[:id])
	end

	private

		def vehicle_params
			params.require(:vehicle).permit(:name, :character_id)
		end

end