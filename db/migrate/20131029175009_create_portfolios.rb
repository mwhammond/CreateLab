class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :company_name
      t.text :bio
      t.date :founded_date
      t.integer :amount_raised
      t.integer :valuation
      t.string :currency
      t.string :status
      t.string :contact_name
      t.string :contact_email
      t.string :contact_number
      t.string :industry_sector

      t.timestamps
    end
  end
end
