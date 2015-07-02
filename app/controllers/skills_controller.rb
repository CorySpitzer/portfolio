class SkillsController < ApplicationController

  def index
    @projects = Project.all
  end
end
