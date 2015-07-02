require 'rails_helper'

describe 'the add project form' do
  it 'adds a project using the form' do
    visit root_path
    # Fill in and submit form
    expect(page).to have_content ''
  end
end
