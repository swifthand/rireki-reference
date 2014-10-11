class Education < ActiveRecord::Base

  validates_presence_of :date, :award, :description, :school, :location

end
