class ProjectsController < ApplicationController

  before_filter :authenticate_person!

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    # @peo = Person.all
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_path, :notice => "New Project Created Successfully !!"
    else
      render "new"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to projects_path
    end
  end

end
