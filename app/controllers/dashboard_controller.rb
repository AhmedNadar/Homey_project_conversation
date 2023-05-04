class DashboardController < ApplicationController
  before_action :authenticate_user!
  def show
    @projects = current_user.projects.all.order(created_at: :desc)
    @in_progress_projects = current_user.projects.in_progress.order(created_at: :desc)
    @completed_projects = current_user.projects.completed.order(created_at: :desc)
    @cancelled_projects = current_user.projects.cancelled.order(created_at: :desc)
  end
end
