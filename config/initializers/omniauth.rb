#Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, '554088804642131', '3476610a22b5f0eaaccb4686afdd1163'
  provider :google_oauth2, ENV["GOOGLE_KEY"], ENV["GOOGLE_SECRET"]
  provider :identity, on_failed_registration: lambda{ |env|
		IdentitiesController.action(:new).call(env)
  }
  
  
end