class Api::V1::DroidsController < ApplicationController
	respond_to :json
	before_action :doorkeeper_authorize!

	def index
		respond_with Droid.all
	end

	def show
		respond_with Droid.find(params[:id])
	end

	# The rest of these methods are being kept for potential future iterations

	def create
		respond_with Droid.create(droid_params)
	end

	def update
		respond_with Droid.update(params[:id], droid_params)
	end

	def destroy
		respond_with Droid.destroy(params[:id])
	end

	private

		def droid_params
			params.require(:droid).permit(:name, :character_id)
		end

end