class ResumeEducation < ActiveRecord::Base
  belongs_to :resume
  belongs_to :education
end
