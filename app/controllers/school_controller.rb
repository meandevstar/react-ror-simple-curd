class SchoolController < ApplicationController

	def index 
		@classrooms = Classroom.all
	end

	def add
		# classroom = Classroom.new
		# classroom.room_number = 18
		# classroom.room_name = "Gemini"
		# classroom.floor_number = 10
		# classroom.student_capacity = 20
		# classroom.save
	end

end
