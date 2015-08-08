class StudentsDetailsController < ApplicationController
	def index
		@student = StudentDetails.all
	end
 	def show
 	end
 	def new
 		@students = StudentDetails.new
 	end
 	def edit
 	end
 	def create
 	end
 	def update
 	end
 	def destroy
 	end
end
