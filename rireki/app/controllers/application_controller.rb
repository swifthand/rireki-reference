class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def ownership_check!(entity)
    security_violation unless current_user.owns?(entity)
  end

  def security_violation
    redirect_to dashboard_path, notice: "Hey. Stop that."
  end

end
