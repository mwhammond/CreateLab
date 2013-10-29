# encoding: utf-8

class EventUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    ActionController::Base.helpers.asset_path([version_name, "event_default.png"].compact.join('_'))
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process eager: true
    cloudinary_transformation width: 100, height: 100, crop: :fit
  end

  version :medium do
    process eager: true
    cloudinary_transformation width: 300, height: 300, crop: :fit
  end

  version :large do
    process eager: true
    cloudinary_transformation width: 500, height: 500, crop: :fit
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
