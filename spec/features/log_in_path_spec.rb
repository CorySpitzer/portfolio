require 'rails_helper'

describe 'the login path' do
  it 'visits the sign in page' do
    visit root_path
    click_on 'Sign in'
    expect(page).to have_content 'Remember'
  end

  it 'logs in as admin' do
    user = FactoryGirl.create :admin
    visit new_user_session_path
save_and_open_page
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
#   fill_in 'Password confirmation', with: user.password
    click_on 'Log in'
    expect(page).to have_content 'successfully'
  end

  it 'logs in as a guest' do

  end

end
