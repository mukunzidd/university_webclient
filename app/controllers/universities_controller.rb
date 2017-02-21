class UniversitiesController < ApplicationController
	def show
		@university = University.find(params[:id])
	end
	
end
