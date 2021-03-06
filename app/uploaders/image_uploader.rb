class ImageUploader < CarrierWave::Uploader::Base
 storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

def default_url(*args)
    "/images/" + [version_name, "default-avatar.png"].compact.join('_')
  end

  #  version :thumb do
  #    process :resize_to_fit => [40, 40]
  #  end


   def extension_white_list
     %w(jpg jpeg gif png)
   end
end
