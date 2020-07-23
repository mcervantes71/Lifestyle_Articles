require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  let(:username) { 'mcervantes' }
  let(:password) { '123456' }

  scenario 'Valid login' do
    visit new_user_session_path
    within('form') do
      fill_in 'Username', with: username
      fill_in 'Password', with: password
    end
    click_button 'Login'
    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'Invalid login' do
    visit new_user_session_path
    within('form') do
      fill_in 'Username', with: username
    end
    click_button 'Login'
    expect(page).to have_content('Invalid Username or password.')
  end
end
