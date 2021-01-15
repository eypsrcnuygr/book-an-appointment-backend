require 'rails_helper'
RSpec.describe 'Teachers', type: :request do
  describe 'GET /teachers' do
    it 'cannot make a request without credentials' do
      get '/teachers'
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 401
    end
  end

  describe 'GET /teacher' do
    let(:teacher) { Teacher.create(email: 'sercanuygur@gmail.com', password: '12345678', nickname: 'srjnnnn') }
    let(:appointment) { Appointment.create(user_id: 1, teacher_id: teacher.id) }
    it 'cannot make a request without credentials' do
      get "/show/#{teacher.id}"
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 401
    end
  end
end
