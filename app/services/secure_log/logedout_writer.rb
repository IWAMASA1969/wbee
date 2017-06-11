class SecureLog::LogedoutWriter < SecureLog::SecureLogWriter
  def write_log
    super(LOGOUT, true)
  end

  private
  def get_wbee_user_id()
    @authetication_information.wbee_user_id
  end
end
