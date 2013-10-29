class Portfolio < ActiveRecord::Base
  validates_presence_of :company_name, :industry_sector, :contact_name, :contact_email
end
