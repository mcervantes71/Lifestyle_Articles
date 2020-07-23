require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }

  describe 'New user validations' do
    it 'User no name' do
      user.name = nil
      user.valid?
      expect(user.errors[:name]).to include('can\'t be blank')
    end

    it 'User name validation' do
      user.name = 'test'
      user.valid?
      expect(user.errors[:name]).to_not include('can\'t be blank')
    end

    it 'User no username' do
      user.username = nil
      user.valid?
      expect(user.errors[:username]).to include('can\'t be blank')
    end

    it 'User username validation' do
      user.username = 'test'
      user.valid?
      expect(user.errors[:username]).to_not include('can\'t be blank')
    end
  end
end
