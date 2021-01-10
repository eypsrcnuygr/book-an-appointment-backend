class TeachersController < ApplicationController
  def index
    teacher = Teacher.all
    render json: {
      data: teacher
    }
  end
end
