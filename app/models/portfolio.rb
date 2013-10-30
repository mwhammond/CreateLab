class Portfolio < ActiveRecord::Base
	has_many :jobs, dependent: :destroy

  validates_presence_of :company_name, :industry_sector, :contact_name, :contact_email
end
