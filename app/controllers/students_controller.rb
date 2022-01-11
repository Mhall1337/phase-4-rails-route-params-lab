class StudentsController < ApplicationController

  def index
    if(params[:name])
    students = Student.where("first_name LIKE ? OR last_name LIKE ?" , "#{params[:name]}", "#{params[:name]}")
    else 
      students = Student.all
    end
    render json: students
  end

  def id
    student = Student.find(params[:id])
    render json: student
  end

  def name
    student = Student.find_by(first_name: params[:first_name])
    render json: student
  end
end
