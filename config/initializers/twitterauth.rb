Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_CLIENT_ID"], ENV["TWITTER_CLIENT_SECRET"], ENV["TWITTER_TOKEN"], ENV["TWITTER_TOKEN_SECRET"]
end
