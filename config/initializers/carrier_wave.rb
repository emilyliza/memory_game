# config/initializers/carrier_wave.rb
 
require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAI4OTI7ZOS5Q7ES3A",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "emilyliza"
end

# CarrierWave.configure do |config|
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     'AKIAI4OTI7ZOS5Q7ES3A',       # required
#     aws_secret_access_key: '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',  # required
#     # region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
#     # host:                  's3.example.com',             # optional, defaults to nil
#     # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
#   }
#   config.fog_directory  = 'emilyliza'                          # required
#   config.fog_public     = false                                        # optional, defaults to true
#   config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
# end
