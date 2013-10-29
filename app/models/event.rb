class Event < ActiveRecord::Base
  has_attached_file :event_image, styles: { medium: "300x300", thumb: "100x100" }, path: ":rails_root/app/assets/images/event_images/:id/:style_:basename.:extension", url: "/assets/event_images/:id/:style_:basename.:extension", default_url: "/assets/images/medium_event_default.png"
end

