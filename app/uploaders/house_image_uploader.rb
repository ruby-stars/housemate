class HouseImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    image_path = ENV["IMAGE_PATH"] || "default"
    "uploads/#{model.class.to_s.underscore}/#{image_path}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url(*args)
    #{}"/images/default/default-image.png"
    ActionController::Base.helpers.asset_path("default/" + [version_name, "default-image.png"].compact.join('_'))
  end

  # Process files as they are uploaded:
  process resize_to_fit: [400, 400]
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fill: [400, 300]
  end

  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [200, 150]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here,
  # see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
