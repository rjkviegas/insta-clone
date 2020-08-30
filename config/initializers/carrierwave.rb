CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region:                'eu-west-2'
    }
    config.fog_public = false
    config.permissions = 0666
    config.cache_dir = "#{Rails.root}/tmp/"
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.fog_attributes = { 'Cache_Control' => "max-age#{365.day.to_i}" }
  end
