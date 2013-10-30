class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :portfolio, index: true
      t.string :job_title
      t.text :job_description
      t.text :skills
      t.string :contact_email

      t.timestamps
    end
  end
end
