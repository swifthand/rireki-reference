class ResumeExperience < ActiveRecord::Base
  belongs_to :resume
  belongs_to :experience
end
