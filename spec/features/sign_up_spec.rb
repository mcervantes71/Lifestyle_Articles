require 'rails_helper'

RSpec.describe 'Sign up', type: :feature do
  let(:name) { 'Test User' }
  let(:username) { 'testuser' }
  let(:password) { 'qwerty' }

  scenario 'Sign up successfully' do
    visit new_user_registration_path
    click_link 'Register'
    visit '/users/sign_up'
    within('form') do
      fill_in 'Name', with: name
      fill_in 'Username', with: username
      fill_in 'Password', with: password
      fill_in 'Password confirmation', with: password
    end
    click_button 'Register'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
