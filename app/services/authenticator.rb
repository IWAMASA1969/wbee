class Authenticator
  def initialize(login_user)
    @login_user = get_login_user(login_user)
    @user_passwords = get_user_passwords(login_user)
  end

  def authenticate(raw_password)
    must_exist_user &&
    must_exist_password_information &&
    it_only_a_password_information &&
    must_same_input_password_saved_password(raw_password)
  end

  def get_login_user(login_user)
    login_user
  end

  def get_user_passwords(login_user)
    if login_user.wbee_user_passwords
      @user_passwords =
        login_user.wbee_user_passwords.select {|pw|
          (pw.start_date <= Date.today) &&
          (pw.expiry_date.nil? || pw.expiry_date > Date.today)
        }
    else
      nil
    end
  end

  def must_exist_user
    @login_user
  end

  def must_exist_password_information
    @user_passwords
  end

  def it_only_a_password_information
    (@user_passwords.length == 1)
  end

  def must_same_input_password_saved_password(raw_password)
    BCrypt::Password.new(@user_passwords[0].hashed_password) == raw_password
  end
end
