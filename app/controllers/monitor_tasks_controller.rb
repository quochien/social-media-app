class MonitorTasksController < ApplicationController
  before_action :find_facebook_app
  before_action :find_monitor_task, only: [:edit, :destroy, :update]

  def index
    @monitor_tasks = @facebook_app.monitor_tasks
  end

  def new
    @monitor_task = @facebook_app.monitor_tasks.new
  end

  def create
    @monitor_task = @facebook_app.monitor_tasks.new(monitor_task_params)

    if @monitor_task.save
      flash[:success] = "Created new monitor task."
      redirect_to facebook_app_monitor_tasks_path(@facebook_app)
    else
      flash[:alert] = @monitor_task.errors.full_messages.join
      render :new
    end
  end

  def edit
  end

  def update
    @monitor_task.update_attributes(monitor_task_params)
    flash[:success] = "Updated monitor task."
    redirect_to facebook_app_monitor_tasks_path(@facebook_app)
  end

  def destroy
    @monitor_task.destroy
    flash[:success] = "Deleted monitor task."
    redirect_to facebook_app_monitor_tasks_path(@facebook_app)
  end

  private

  def find_facebook_app
    @facebook_app = FacebookApp.find(params[:facebook_app_id])
  end

  def find_monitor_task
    @monitor_task = MonitorTask.find(params[:id])
  end

  def monitor_task_params
    params.require(:monitor_task).permit(:source_facebook_url)
  end
end
