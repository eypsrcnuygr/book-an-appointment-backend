require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(email: 'sercanuygur@gmail.com', password: '12345678') }
  context 'validation' do
    subject do
      described_class.new(email: 'sercanuygur@gmail.com', password: '12345678')
    end

    it 'Is valid with requirements' do
      expect(subject).to be_valid
    end

    it 'Is valid without nickname' do
      subject.nickname = nil
      expect(subject).to be_valid
    end

    it 'Is not valid without email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  context 'Association' do
    it 'Has many appointments' do
      u = User.reflect_on_association(:appointments)
      expect(u.macro).to eq(:has_many)
    end
  end
end
