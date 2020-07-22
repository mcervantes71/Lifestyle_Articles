require 'rails_helper'

RSpec.describe 'Create article', type: :feature do
  let(:username) { 'mcervantes' }
  let(:password) { '123456' }

  let(:title) { 'Test Title' }
  let(:text) { 'test test test test' }
  let(:image) { 'http://testestes.jpg' }

  scenario 'Valid article' do
    visit new_user_session_path
    fill_in 'Username', with: username
    fill_in 'Password', with: password
    click_button 'Login'
    visit new_article_path
    within('form') do
      fill_in 'Title', with: title
      fill_in 'Text', with: text
      fill_in 'Image Url', with: image
    end
    click_button 'Save'
    expect(page).to have_content('Article \'Test Title\' Successfully Created!')
  end
end
