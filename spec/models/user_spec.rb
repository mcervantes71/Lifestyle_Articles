require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should create new user' do
    user = create(:user)
    expect(user).to be_present
  end

  it 'should not create new user' do
    create(:user, password: nil)
    raise_error('password cannot be blank')
  end

  context 'validate presence of' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it 'has many articles' do
      assoctiation = described_class.reflect_on_association(:articles)
      expect(assoctiation.macro).to eq :has_many
    end

    it 'has many votes' do
      assoctiation = described_class.reflect_on_association(:votes)
      expect(assoctiation.macro).to eq :has_many
    end
  end
end
