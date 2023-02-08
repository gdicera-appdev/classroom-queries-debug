class DepartmentsController < ApplicationController
  def index
    @list_of_department = Department.all
    matching_departments = Department.order({ :created_at => :desc }).at(0)
    render({ :template => "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    matching_departments = matching_departments
    @the_department = Department.where({ :id => the_id }).at(0)
    render({ :template => "departments/show.html.erb" })
  end
end
