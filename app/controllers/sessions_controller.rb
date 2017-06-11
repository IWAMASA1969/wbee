class SessionsController < BaseController
  def new
    if current_wbee_user
      redirect_to :root
    else
      @form = LoginForm.new
      render action: 'new'
    end
  end

  def create
    @form = LoginForm.new(login_params)
    if wbee_user = authentication_is_successful?
      session[:wbee_user_id] = wbee_user.id
      write_log_success(wbee_user.id)
      redirect_to :root
    else
      write_log_falsy
      render action: 'new'
    end
  end

  def destroy
    write_log_logout(session[:wbee_user_id])
    session.delete(:wbee_user_id)
    redirect_to :root
  end

  private
  def authentication_is_successful?
    if @form.login_id.present?
      wbee_user = WbeeUser.find_by(login_id: @form.login_id)

      if wbee_user
        if Authenticator.new(wbee_user).authenticate(@form.raw_password)
          wbee_user
        end
      end
    end
  end

  private
  def login_params
    params.require(:login_form).permit(:login_id, :raw_password)
  end

  private
  def write_log_success(wbee_user_id)
    SecureLog::LogedinSuccessWriter.new(
      SecureLog::AutheticationInformation.new(wbee_user_id, nil, nil)
    ).write_log
  end

  private
  def write_log_falsy
    if @form.login_id.present?
      SecureLog::LogedinFalsyWriter.new(
        SecureLog::AutheticationInformation.new(
          nil,
          @form.login_id,
          @form.raw_password
        )
      ).write_log
    else
    end
  end

  private
  def write_log_logout(wbee_user_id)
    SecureLog::LogedoutWriter.new(
      SecureLog::AutheticationInformation.new(wbee_user_id, nil, nil)
    ).write_log
  end
end
