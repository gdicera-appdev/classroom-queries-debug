class CoursesController < ApplicationController
  def index
    @list_of_courses = Course.all
    matching_courses = Course.order({ :created_at => :desc }).at(0)
    render({ :template => "courses/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    matching_courses = matching_courses
    @the_course = Course.where({ :id => the_id }).at(0)
    render({ :template => "courses/show.html.erb" })
  end
end
