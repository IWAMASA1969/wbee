class SecureLog::LogedinSuccessWriter < SecureLog::LogedinWriter
  def write_log
    super(true)
  end

  private
  def get_wbee_user_id()
    @authetication_information.wbee_user_id
  end
end
