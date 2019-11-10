class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url
    ActionController::Base.helpers.asset_path("https://onlinemastery.co.uk/wp-content/uploads/2019/03/placeholder.jpg")
  end
end
