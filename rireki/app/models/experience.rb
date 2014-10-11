class Experience < ActiveRecord::Base

  validates_presence_of :date, :title, :description, :company

end
