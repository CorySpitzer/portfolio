require 'rails_helper'

describe 'the add reference form' do
  it 'is added to the page after its link is clicked' do
    visit references_path
    expect(page).to have_no_content 'Body'
    click_on 'Add Reference'
#save_and_open_screenshot
    expect(page).to have_content 'Body'
  end
end
