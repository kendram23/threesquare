class RatingsController < ApplicationController

	def show
		@rating = Rating.find(params[:location_id])
	end

	def index
		@ratings = Rating.all
	end

	def new
		@rating = Rating.new
	end

	def create
		@location = Location.find(params[:location_id])
		@rating = @location.ratings.create(rating_params[:rating].to_s)
		redirect_to root_path
	end

	def edit
		@rating = Rating.find(params[:id])
	end

	def update
		@rating = Rating.find(params[:id])
		@rating.update(rating_params)
	end

	def destroy
		@rating = rating.find(params[:id])
		@rating.destroy
	end

	private
	def rating_params
		params.require(:rating).permit(:rating)
	end

end



