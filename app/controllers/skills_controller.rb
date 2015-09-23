class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @Skill = Skill.find params[:id]
  end

end
