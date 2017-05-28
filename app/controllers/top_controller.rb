class TopController < BaseController
  def index
    if current_wbee_user
      @tasks = get_run_tasks
      render action: 'index'
    else
      redirect_to :login
    end
  end

  private
  def get_run_tasks
    RunTasks.new(current_wbee_user).get_run_tasks
  end
end
