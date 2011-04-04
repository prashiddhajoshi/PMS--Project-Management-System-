class TasksController < ApplicationController

before_filter :authenticate_person!

  def new
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.new
  end

  def create
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.create(params[:task])
    if @task.save
      redirect_to project_task_group_path(@task_group.project, @task_group), :notice => "New Task Added to the Group Successfully !!"
    else
      render "new"
    end
  end

  def show
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.find(params[:id])
   end

  def destroy
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.find(params[:id])
    if @task.destroy
      redirect_to project_task_group_path(@task_group.project, @task_group)
    end
  end

end