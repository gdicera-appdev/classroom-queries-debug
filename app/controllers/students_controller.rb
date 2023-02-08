class StudentsController < ApplicationController
  def index
    @list_of_students = Student.all
    matching_students = Student.order({ :created_at => :desc}).at(0)
    render({ :template => "students/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    matching_students = matching_students
    @the_student = Student.where({ :id => the_id }).at(0)
    render({ :template => "students/show.html.erb" })
  end
end
