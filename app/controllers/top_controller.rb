class TopController < BaseController
  def index
    if current_wbee_user
      render action: 'index'
    else
      redirect_to :login
    end
  end
end
