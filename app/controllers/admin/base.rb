class Admin::Base < ApplicationController
  private def current_administrator
    if session[:aiministrator_id]
      @current_administrator ||=
        Adminnistrator.find_by(id: session[:aiministrator_id])
    end
  end

  helper_method :current_administrator
end
