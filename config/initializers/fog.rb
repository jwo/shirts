# Then add the following to your carrierwave.rb initializer:
# Configuration for Amazon S3
CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => Rails.application.secrets.aws_access_key_id,
      :aws_secret_access_key => Rails.application.secrets.aws_secret_access_key,
      :region => Rails.application.secrets.s3_region,
    }
 
  if Rails.env.production?
    config.storage = :fog
    config.cache_dir = "#{Rails.root}/tmp/uploads" 
    config.fog_directory = Rails.application.secrets.s3_bucket_name
  else
    config.storage = :file
  end

  config.enable_processing = false if Rails.env.test?
 
end
