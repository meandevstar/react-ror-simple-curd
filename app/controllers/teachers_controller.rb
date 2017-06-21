class TeachersController < ApplicationController

	def new 
		@teacher = Teacher.new
	end
 
  def edit
    @teacher = Teacher.find params[:id]
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to :action => 'index', :controller => 'school'
  end  

  def show 
    @teacher = Teacher.find params[:id]
  end

  def update
    @teacher = Teacher.find params[:id]
    @teacher.update_attributes(teacher_params)
    redirect_to :action => 'show', :controller => 'teachers', :id => params[:id]
  end

  def destroy
    @teacher = Teacher.find params[:id]
    @teacher.destroy
    redirect_to :action => 'index', :controller => 'school'
  end

  def teacher_params
    params.require(:teacher).permit(:name, :gender, :specialization, :classroom_id)
  end

end
