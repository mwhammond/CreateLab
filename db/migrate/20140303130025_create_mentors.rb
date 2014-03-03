class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :type
      t.string :image
      t.string :desc
      t.string :link
    end
  end
end
