class StudentsController < ApplicationController

  def index
    # byebug
    students = Student.all

    if params[:name]
      students = Student.all.select { |student| student.first_name == params[:name].capitalize || student.last_name == params[:name].capitalize}
      # students = "hey"
    end    

    render json: students
  end


  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end


end
