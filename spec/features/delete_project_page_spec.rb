require 'rails_helper'

describe 'the delete project path' do
  it 'vists a project page and deletes the project' do
    project = Project.create name: 'project123',
                             description: 'testing'
    visit project_path project
    click_link 'Delete Project'
    expect(page).to have_no_content 'project123'
  end
end
