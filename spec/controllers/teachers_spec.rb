require 'rails_helper'
RSpec.describe 'Teachers', type: :request do
  describe 'GET /teachers' do
    it 'makes a succesfull request' do
      get '/teachers'
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 200
    end
  end

  describe 'GET /teacher' do
    let(:teacher) { Teacher.create(email: 'sercanuygur@gmail.com', password: '12345678', nickname: 'srjnnnn') }
    let(:appointment) { Appointment.create(user_id: 1, teacher_id: teacher.id) }
    it 'contains the product names' do
      get "/show/#{teacher.id}"
      expect(response.content_type).to eq 'application/json; charset=utf-8'
      expect(response.status).to be 200
    end
  end
end
