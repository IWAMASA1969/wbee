
class SecureLog::LogedinWriter < SecureLog::SecureLogWriter
  def write_log(auth_result)
    super(LOGIN, auth_result)
  end
end
