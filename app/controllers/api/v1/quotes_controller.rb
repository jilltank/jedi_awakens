class Api::V1::QuotesController < ApplicationController
	respond_to :json

	def index
		respond_with Quote.all
	end

	def show
		respond_with Quote.find(params[:id])
	end

	# The rest of these methods are being kept for potential future iterations

	def create
		respond_with Quote.create(quote_params)
	end

	def update
		respond_with Quote.update(params[:id], quote_params)
	end

	def destroy
		respond_with Quote.destroy(params[:id])
	end

	private

		def quote_params
			params.require(:quote).permit(:saying)
		end

end