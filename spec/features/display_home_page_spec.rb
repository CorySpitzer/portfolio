require 'rails_helper'

describe 'the root path' do
  it 'vists the home page' do
    visit root_path
    expect(page).to have_content 'Projects'
  end
end
