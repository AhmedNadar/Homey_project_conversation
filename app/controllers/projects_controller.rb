class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: %i[ index show ]
  before_action :set_project, only: %i[ show edit update destroy ]

  # GET /projects
  def index
    if user_signed_in?
      @projects = current_user.projects.in_progress
    else
      @projects = Project.completed
    end
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = current_user.projects.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  def update
    old_status = @project.status

    if @project.update(project_params)
      new_status = @project.status

      if old_status != new_status
        @project.comments.create(content: "Status changed from '#{old_status.humanize}' to '#{new_status.humanize}'")
        notice = 'Project status was successfully updated.'
      else
        notice = 'Project was successfully updated.'
      end

      redirect_to @project, notice: notice
    else
      render :edit
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy!
    redirect_to projects_url, notice: "Project was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :status)
    end
end
