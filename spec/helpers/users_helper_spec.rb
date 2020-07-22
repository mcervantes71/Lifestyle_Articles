require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  describe 'Get users and articles counters' do
    it 'returns users and articles table' do
      assign(:users, User.users_list)
      expect(helper.users_articles).to include('')
    end
  end
end
