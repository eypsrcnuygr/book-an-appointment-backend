class TeachersController < ApplicationController
  def index
    teacher = Teacher.all
    render json: {
      data: teacher
    }
  end

  def show
    current_teacher = Teacher.all.find_by(id: params[:id])
    cur_appointments = current_teacher.appointments
    render json: cur_appointments
  end
end
