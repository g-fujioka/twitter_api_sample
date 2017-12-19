require 'tweetstream'

TweetStream.configure do |config|
  # applicationの設定
  config.consumer_key         = ENV['TWITTER_KEY']
  config.consumer_secret      = ENV['TWITTER_SECRET_KEY']
  # ユーザー情報の設定
  config.oauth_token         = ENV['OAUTH_TOKEN']
  config.oauth_token_secret  = ENV['OAUTH_SECRET_TOKEN']
  config.auth_method         = :oauth
end

TweetStream::Client.new.sample do |status|
  puts "#{status.user.screen_name}: #{status.text}"
end