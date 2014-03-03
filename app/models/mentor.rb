class Mentor < ActiveRecord::Base

  mount_uploader :image, EventUploader

end