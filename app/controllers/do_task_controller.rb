class DoTaskController < BaseController
  def create
    p params
    redirect_to :root
  end
end
