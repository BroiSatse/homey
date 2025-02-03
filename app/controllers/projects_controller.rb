class ProjectsController < ApplicationController
  def index
    render Projects::Index.new
  end
end
