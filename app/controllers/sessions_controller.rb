class SessionsController < BaseController
  def new
    if current_wbee_user
    else
      @form = LoginForm.new
      render action: 'new'
    end
  end
end
