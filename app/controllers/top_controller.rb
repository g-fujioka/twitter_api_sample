class TopController < ApplicationController
  skip_before_action :authenticate
  before_action :client, only: [:tweet, :get, :sample]

  def index
  end

  def tweet
    # Twitter投稿
    @client.update(params[:text])
    redirect_to root_path, notice: 'ツイートしました！'
  end

  def get
    @tweets = []
    @client.home_timeline(:count => 200).each do |tweet|
      @tweets << tweet
    end
  end

  private

  def client
    @client = Twitter::REST::Client.new do |config|
      # applicationの設定
      config.consumer_key         = Settings.twitter_key
      config.consumer_secret      = Settings.twitter_secret
      # ユーザー情報の設定
      user_auth = current_user.authentications.first
      config.access_token         = user_auth.token
      config.access_token_secret  = user_auth.secret
    end
  end
end
