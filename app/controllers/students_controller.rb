class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
    # byebug
  end

  def grades
    best_to_worst = Student.order(grade: :desc)
    render json: best_to_worst
  end

  def highest_grade
    best_student = Student.all.max_by{|student| student.grade}
    render json: best_student
  end

end
