class EnrollmentsController < ApplicationController
  def index
    @list_of_enrollment = Enrollment.all
    matching_enrollments = Enrollment.order({ :created_at => :desc }).at(0)
    render({ :template => "enrollments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")
    matching_enrollments = matching_enrollments
    @the_enrollment = Enrollment.where({ :id => the_id }).at(0)
    render({ :template => "enrollments/show.html.erb" })
  end
end
