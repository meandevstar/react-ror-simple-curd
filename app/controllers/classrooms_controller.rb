class ClassroomsController < ApplicationController

	def new 
		@classroom = Classroom.new
  end
 
  def edit
    @classroom = Classroom.find params[:id]
    @teachers = Teacher.all
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.save
    redirect_to :action => 'index', :controller => 'school'
  end  

  def show 
    @classroom = Classroom.find params[:id]
  end

  def update
    @classroom = Classroom.find params[:id]
    @classroom.update_attributes(classroom_params)
    redirect_to :action => 'show', :controller => 'classrooms', :id => params[:id]
  end

  def destroy
    @classroom = Classroom.find params[:id]
    @classroom.destroy
    redirect_to :action => 'index', :controller => 'school'
  end

  def classroom_params
    params.require(:classroom).permit(:room_number, :room_name, :floor_number, :student_capacity, :teacher_id)
  end
  
end
