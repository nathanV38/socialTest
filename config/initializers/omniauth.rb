#Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, 'FACEBOOK_APP_ID', 'FACEBOOK_SECRET'
end