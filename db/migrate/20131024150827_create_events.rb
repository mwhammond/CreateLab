class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.text :description
      t.string :location
      t.string :partner
      t.string :external_url
      t.string :ticket_url
      t.string :event_type

      t.timestamps
    end
  end
end
