require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:user) { User.create(email: 'sercanuygur@gmail.com', password: '12345678') }
  let(:teacher) { Teacher.create(email: 'sercanuygur@gmail.com', password: '12345678') }
  let(:appointment) { Appointment.create(user_id: 1, teacher_id: 1) }
  context 'validation' do
    subject do
      described_class.new(user_id: user.id, teacher_id: teacher.id)
    end

    it 'Is valid with requirements' do
      expect(subject).to be_valid
    end

    it 'Is valid without status = none' do
      subject.status = 'none'
      expect(subject).to be_valid
    end

    it 'Is not valid without user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end

  context 'Association' do
    it 'Belongs to User' do
      u = Appointment.reflect_on_association(:user)
      expect(u.macro).to eq(:belongs_to)
    end
  end
end
