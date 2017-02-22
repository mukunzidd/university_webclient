class UniversitiesController < ApplicationController

	def index
		@university = University.all
	end

	def show
		@university = University.find(params[:id])
	end
	def new
		
	end
	def create
		
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end
end
