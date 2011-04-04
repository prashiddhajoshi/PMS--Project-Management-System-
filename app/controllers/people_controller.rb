class PeopleController < ApplicationController

  def new
    @task = Task.find(params[:task_id])
    puts @task.inspect
    @person = Person.new
  end

  def create
    @task = Task.find(params[:task_id])
    @person = Person.new(params[:person])
    @person.task_id = params[:task_id]
    if @person.save
      redirect_to task_path(@task), :notice => "New Person Added Successfully !!"
    else
      render "new"
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    @person = @task.person.find(params[:person])
    if @person.destroy
      redirect_to task_path(@task)
    end
  end

end
