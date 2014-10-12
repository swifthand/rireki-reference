class ResumeActivity < ActiveRecord::Base
  belongs_to :resume
  belongs_to :activity
end
