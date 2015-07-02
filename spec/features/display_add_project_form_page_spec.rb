require 'rails_helper'

# Some of this testing should really be done on the class
# to determine whether the controller or front-end is breaking,
# but for now this will work:
describe 'the add project form' do
  it 'adds a project using the form' do
    visit new_project_path
    fill_in 'project_name', with: 'test project1'
    fill_in 'project_description', with: 'testing'
    click_on 'Create Project'
    expect(page).to have_content 'test project1'
  end
end
