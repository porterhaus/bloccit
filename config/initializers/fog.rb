CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAILDHPGENK6M4DQYQ',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'porterhaus-bloccit-development'
  config.fog_public     = true
end

# Ref:
# https://support.cloud.engineyard.com/entries/20996881-Use-CarrierWave-and-Optionally-Fog-to-Upload-and-Store-Files#update3
# http://stackoverflow.com/questions/7946819/carrierwave-and-amazon-s3