class Portfolio < ActiveRecord::Base
	has_many :jobs, dependent: :destroy
  	validates_presence_of :company_name
	mount_uploader :logo, EventUploader
end
