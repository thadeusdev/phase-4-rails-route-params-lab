class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  # def self.search(keywords)
  #   if keywords
  #     where(:all, :conditions => ["concat(first_name," ",last_name) like?", "%#{keywords}%"])
  #   end
  # end

end
