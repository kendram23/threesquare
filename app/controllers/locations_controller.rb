class LocationsController < ApplicationController

	def show
		@location = Location.find(params[:id])
	end

	def index
		@locations = Location.all
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.create(loca_params)
		redirect_to root_path
	end

	def edit
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])
		@location.update(loca_params)
		redirect_to root_path
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy
		redirect_to root_path
	end

	private
	def loca_params
		params.require(:location).permit(:picture_url, :name, :address, :website)
	end

end