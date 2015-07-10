class ProjectsController < ApplicationController
  # Require a user to be logged in before using this controller:
  # before_filter :authenticate_user!, except: [:index, :show]
  before_filter :admin_only, except: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    # flash[:notice] = "Project Destroyed!"
    Project.find(params[:id]).destroy
    flash[:notice] = "Project Destroyed!"
    redirect_to root_path
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
      # flash[:notice] = "Try again, please"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def admin_only
    # unless logged in as admin:
    unless current_user and current_user.admin
      redirect_to root_path, alert: 'No, no, no ;)'
    end
  end

end
