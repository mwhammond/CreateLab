class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :mentors, :type, :sector
  end
end
