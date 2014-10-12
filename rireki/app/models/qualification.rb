class Qualification < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :description, :user

end
