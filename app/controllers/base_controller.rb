class BaseController < ApplicationController
  private
  def current_wbee_user
    if session[:wbee_user_id]
      @current_wbee_user ||=
        WbeeUser.find_by(id: session[:wbee_user_id])
    end
  end

  helper_method :current_wbee_user
end
