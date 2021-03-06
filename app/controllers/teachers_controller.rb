class TeachersController < ApplicationController
  before_action :authenticate_any!

  def index
    teacher = Teacher.all
    render json: {
      data: teacher
    }
  end

  def show
    current_teacher = Teacher.all.find_by(id: params[:id])
    cur_appointments = current_teacher.appointments
    cur_appointments_users = []

    cur_appointments.each do |item|
      cur_appointments_users.push(item.user.email)
    end

    render json: {
      appointments: cur_appointments,
      users_mails: cur_appointments_users,
      cur_teacher: current_teacher
    }
  end
end
