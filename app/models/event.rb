class Event < ActiveRecord::Base
  has_attached_file :event_image, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
#                     :default_url => "/images/:style/missing.png",
                    :path => ":rails_root/app/assets/images/event_images/:id/:style_:basename.:extension",
                    :url => "/assets/event_images/:id/:style_:basename.:extension"
end