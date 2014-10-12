class ResumesController < ApplicationController

  def show
    @user = User.find(params[:user_id])

    @experiences    = @user.experiences.all
    @educations     = @user.educations.all
    @activities     = @user.activities.all
    @qualifications = @user.qualifications.all

    render "show"
  end

end