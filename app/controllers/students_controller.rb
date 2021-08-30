class StudentsController < ApplicationController

  def index
    if (params[:name]) 
      student = Student.find_by(last_name: params[:name].capitalize())
      students = []
      students.push(student)
    else students  = Student.all
    end
    render json: students
  end

  def select
    student = Student.find(params[:id])
    render json: student
  end

end
