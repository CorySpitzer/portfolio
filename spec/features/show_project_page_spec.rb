require 'rails_helper'

describe 'the show project path' do
  it 'vists a project page' do
    project = Project.create name: 'test project',
                             description: 'testing'
    visit project_path project
    expect(page).to have_content 'test project'
  end
end
