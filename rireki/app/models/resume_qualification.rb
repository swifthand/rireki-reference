class ResumeQualification < ActiveRecord::Base
  belongs_to :resume
  belongs_to :qualification
end
