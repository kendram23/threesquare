class LocationsController < ApplicationController

	def show
		@location = Locations.find(params[:id])
	end

	def index
		@locations = Locations.all
	end

	def new
		@location = Locations.new
	end

	def create
		location = Locations.create(loca_params)
		redirect_to root_path
	end

	def edit
		@location = Locations.find(params[:id])
	end

	def update
		@location = Locations.find(params[:id])
		@location.update(loca_params)
		redirect_to root_path
	end

	def destroy
		@location.destroy
	end

	private
	def loca_params
		params.require(:locations).permit(:picture_url, :name, :review, :address, :website)
	end

end