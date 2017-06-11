class SecureLog::LogedinFalsyWriter < SecureLog::LogedinWriter
  def write_log
    super(false)
  end

  private
  def get_login_id()
    @authetication_information.login_id
  end

  private
  def get_raw_password()
    @authetication_information.raw_password
  end
end
