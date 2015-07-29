require 'rails_helper'

describe 'the edit projects path' do
  it 'edits a project' do
    project = Project.create name: 'project123',
                             description: 'testing'
    create_and_login_user :admin
    visit project_path project
    click_link 'Edit Project'
    fill_in 'Name', with: 'New Name'
    fill_in 'Description', with: 'New Description'
    click_on 'Update Project'
    expect(page).to have_content 'New Name New Description'
  end
end
