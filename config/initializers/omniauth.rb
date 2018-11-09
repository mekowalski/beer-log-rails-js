Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
end
