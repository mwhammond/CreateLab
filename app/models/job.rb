class Job < ActiveRecord::Base
  belongs_to :portfolio

  validates_presence_of :job_title, :job_description, :contact_email
end
