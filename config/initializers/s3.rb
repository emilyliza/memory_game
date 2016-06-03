CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAI4OTI7ZOS5Q7ES3A",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "emilyliza"
end

