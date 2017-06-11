class SecureLog::SecureLogWriter
  LOGIN = 1
  LOGOUT = -1

  def initialize(authetication_information)
    raise ArgumentError if authetication_information.blank?

    @authetication_information = get_authetication_information(authetication_information)
  end

  def write_log(login_logout_div, auth_result)
    argv={}
    argv[:wbee_user_id] = get_wbee_user_id
    argv[:login_id] = get_login_id
    argv[:raw_password] = get_raw_password
    argv[:login_logout_div] = login_logout_div
    argv[:auth_result] = auth_result

    log = AuthenticationLog.new(argv)
    log.save!

    log
  end

  private
  def get_authetication_information(authetication_information)
    authetication_information
  end

  private
  def get_wbee_user_id
    nil
  end

  private
  def get_login_id
    nil
  end

  private
  def get_raw_password
    nil
  end
end
