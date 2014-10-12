class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]

  def index
    @resumes = current_user.resumes.all
  end

  def show
  end

  def new
    @resume = Resume.new
    set_resume_entries
  end

  def edit
    set_resume_entries
  end

  def create
    @resume = current_user.resumes.build(resume_params)
    @resume.save

    redirect_to resume_path(@resume)
  end

  def update
    @resume.update(resume_params)

    redirect_to resume_path(@resume)
  end

  def destroy
    @resume.destroy
  end

  private
    def set_resume
      @resume = Resume.find(params[:id])
      ownership_check!(@resume)
    end

    def set_resume_entries
      @experiences    = current_user.experiences.all
      @educations     = current_user.educations.all
      @activities     = current_user.activities.all
      @qualifications = current_user.qualifications.all
    end

    def resume_params
      params.require(:resume).permit(:name, :objective,
        experience_ids: [], activity_ids: [], education_ids: [], qualification_ids: [])
    end
end
