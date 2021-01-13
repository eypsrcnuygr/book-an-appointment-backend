class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show update destroy]

  def index
    @appointments = Appointment.all
    @teachers = []
    @users = []

    @appointments.each do |element|
      @teachers.push(element.teacher)
      @users.push(element.user)
    end

    render json: { appointments: @appointments, teachers: @teachers, users: @users }
  end

  def show
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created, location: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :teacher_id, :date, :status)
  end
end
