class AddAttachmentEventImageToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.string :event_image
    end
  end

  def self.down
    drop_attached_file :events, :event_image
  end
end
