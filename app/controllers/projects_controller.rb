class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render Projects::Index.new(projects:)
  end

  def show
    render Projects::Show.new(project:)
  end

  def add_comment
    Projects::AddComment.new(
      project:,
      comment: params[:comment][:text],
      user: current_user
      ).call
    redirect_to action: :show
  end

  private

  def project
    @project ||= Project.find(params[:id])
  end
end
