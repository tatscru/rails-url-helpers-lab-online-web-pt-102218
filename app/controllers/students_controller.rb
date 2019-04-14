class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:activate]
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate 
    # setting a default value- to false 
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save

    redirect_to student_path(@student)
    # @student.update(active: !@student.active)
    # redirect_to student_path(@student)
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end