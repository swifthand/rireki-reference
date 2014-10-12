class Education < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :date, :award, :description, :school, :location, :user

end
