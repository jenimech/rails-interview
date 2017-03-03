class StudentsController < ApplicationController
  def index
    if params[:movie].blank?
        @students = Student.all
      else
        @students = Student.all_by_movie(params[:movie])
      end
      @movies = Student.movies
  end
end
