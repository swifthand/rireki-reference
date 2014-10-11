class StaticController < ApplicationController

  def landing
    @experiences    = Experience.all
    @educations     = Education.all
    @activities     = Activity.all
    @qualifications = Qualification.all

    render "resume"
  end


  def dashboard
  end

end
