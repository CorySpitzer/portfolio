class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    # The new form needs access to a @project
    @project = Project.new()
  end

  # once the form is submitted we must create the Project if valid
  def create
    # Why does @project need to be an instance var here?
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project Added!"
      redirect_to root_path
    else
      flash[:notice] = "Try again, please"
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
