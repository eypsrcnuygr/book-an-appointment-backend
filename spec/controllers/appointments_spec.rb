require 'rails_helper'
require 'date'
RSpec.describe 'Appointments', type: :request do
  describe 'GET /appointments' do
    it 'makes a succesfull request' do
      get '/appointments'
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 200
    end
  end

  describe 'GET /appointment' do
    let(:teacher) { Teacher.create(email: 'sercanuygur@gmail.com', password: '12345678', nickname: 'srjnnnn') }
    let(:appointment) { Appointment.create(user_id: 1, teacher_id: teacher.id) }
    it 'makes a succesfull request' do
      get "/appointments/#{appointment.id}"
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 200
    end
  end

  describe 'POST /appointments' do
    let(:user) { User.create(email: 'sercanuygur@gmail.com', password: '12345678') }
    let(:teacher) { Teacher.create(email: 'sercanuygur@gmail.com', password: '12345678', nickname: 'srjnnnn') }
    let(:appointment) { Appointment.create(user_id: user.id, teacher_id: teacher.id, date: Date.today, status: 'none') }
    it 'creates the appointment' do
      post '/appointments/',
           params: { appointment: {
             user_id: user.id, teacher_id: teacher.id, date: Date.today, status: appointment.status
           } }
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 201
    end
  end
end
