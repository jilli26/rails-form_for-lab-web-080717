class StudentsController < ApplicationController

  def new
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

end
