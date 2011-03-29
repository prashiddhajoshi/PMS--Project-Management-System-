class TaskGroupsController < ApplicationController

  before_filter :authenticate_person!

  def new
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.create(params[:task_group])
    if @task_group.save
      redirect_to project_path(@project), :notice => "New Task Group Added Successfully !!"
    else
      render "new"
    end

  end

  def show
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
    if @task_group.destroy
      redirect_to project_path(@project)
    end
  end

end
