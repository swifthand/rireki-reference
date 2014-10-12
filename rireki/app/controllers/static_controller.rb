class StaticController < ApplicationController

  def landing
    if user_signed_in?
      redirect_to dashboard_path
    else
      redirect_to sign_in_path
    end
  end


  def dashboard
    @experiences    = current_user.experiences.all
    @educations     = current_user.educations.all
    @activities     = current_user.activities.all
    @qualifications = current_user.qualifications.all
  end

end
