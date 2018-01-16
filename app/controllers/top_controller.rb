class TopController < ApplicationController
  skip_before_action :authenticate

  def index
    @tweets = Kaminari.paginate_array(client.home_timeline(count: 200)).page(params[:page]).per(30)
  rescue
    flash[:notice] = 'ログインしてください'
  end

  def tweet
    # Twitter投稿
    client.update(params[:text])
    redirect_to root_path, notice: 'ツイートしました！'
  end

  def get
    @my_tweets = Kaminari.paginate_array(client.user_timeline(current_user.name, count: 200)).page(params[:page]).per(30)
  end

  def search
  end

  def search_ajax
    @search_tweets = client.search(params[:text], result_type: params[:result_type], lang: 'ja', exclude: 'retweets', count: 30)
    if @search_tweets.blank?
      redirect_to root_url, flash: {notice: 'ツイートはありませんでした'}
      return
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def retweet
    client.retweet(params[:id])
    redirect_to top_search_path, flash: {notice: 'RTしました'}
  rescue
    redirect_to top_search_path, flash: {notice: '既にリツイートしています'}
  end

  def destroy
    client.destroy_status(params[:tweet])
    redirect_to top_get_path, flash: {notice: '削除しました'}
  rescue => e
    redirect_to top_get_path, flash: {notice: e}
  end

  def stream
  end

  def stream_ajax
    count = 0
    stream_client.sample do |object|
      if object.is_a?(Twitter::Tweet)
        puts object.text
        count += 1
        if count > 300
          redirect_to top_stream_path
          return
        end
      end
    end
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

  def stream_client
    Twitter::Streaming::Client.new do |config|
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
