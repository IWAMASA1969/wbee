class RunTasks
  def initialize(login_user)
    @login_user = get_login_user(login_user)
  end

  def get_run_tasks
    get_login_user_tasks
  end

  private
  def get_login_user(login_user)
    login_user
  end

  private
  def get_login_user_tasks
    Task.includes(:wbee_users).where(wbee_users: { id: @login_user.id})
  end
end
