class AddLogoAndPromotedToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :logo, :string
    add_column :portfolios, :promoted, :boolean
  end
end
