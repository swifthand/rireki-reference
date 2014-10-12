class Activity < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :date, :title, :description, :user

end
