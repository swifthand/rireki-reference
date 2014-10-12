class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :experiences
  has_many :activities
  has_many :educations
  has_many :qualifications


  def owns?(entity)
    experiences.include?(entity)  or
      activities.include?(entity) or
      educations.include?(entity) or
      qualifications.include?(entity)
  end

end
