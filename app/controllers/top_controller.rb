class TopController < ApplicationController
  skip_before_action :authenticate

  def index
  end

  def tweet
    # Twitter投稿
    client.update(params[:text])
    redirect_to root_path, notice: 'ツイートしました！'
  end

  def get
    @tweets = Kaminari.paginate_array(client.home_timeline(count: 200)).page(params[:page]).per(30)
  end

  def search
    @search_tweets = client.search(params[:text], result_type: 'recent', lang: 'ja', exclude: 'retweets').take(20)
    if @search_tweets.blank?
      flash[:notice] = 'ツイートはありませんでした'
      redirect_to root_url
      return
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def retweet
    client.retweet(params[:id])
    flash[:notice] = 'RTしました'
    render 'index'
  rescue => e
    flash[:notice] = e
    render 'index'
  end

  private

  def client
    Twitter::REST::Client.new do |config|
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
