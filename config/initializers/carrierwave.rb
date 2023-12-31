require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['S3_ACCESS_KEY_ID'],#AWSのaccess_key_id
    aws_secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],#AWSのsecret_access_key
    region: 'ap-northeast-1', #アジアパシフィック（東京）を表している
    path_style: true
  }

  config.fog_directory  = 'rails-test-s3-naka'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/rails-test-s3-naka'
end