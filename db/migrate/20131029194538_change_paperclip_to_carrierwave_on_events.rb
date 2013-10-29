class ChangePaperclipToCarrierwaveOnEvents < ActiveRecord::Migration
  def change
    add_column :events, :image, :string
    remove_column :events, :event_image_file_name
    remove_column :events, :event_image_content_type
    remove_column :events, :event_image_file_size
    remove_column :events, :event_image_updated_at
  end
end
