class Resume < ActiveRecord::Base

  belongs_to  :user

  has_many  :resume_experiences
  has_many  :experiences,     through: :resume_experiences

  has_many  :resume_educations
  has_many  :educations,      through: :resume_educations

  has_many  :resume_activities
  has_many  :activities,      through: :resume_activities

  has_many  :resume_qualifications
  has_many  :qualifications,  through: :resume_qualifications

  validates_presence_of :name

end
