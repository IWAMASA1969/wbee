class SecureLog::AutheticationInformation
  attr_reader :wbee_user_id, :login_id, :raw_password

  def initialize(wbee_user_id, login_id, raw_password)
    if wbee_user_id
      @wbee_user_id = wbee_user_id
      @login_id = nil
      @raw_password = nil
    else
      @wbee_user_id = nil
      @login_id = login_id
      @raw_password = raw_password
    end
  end
end
