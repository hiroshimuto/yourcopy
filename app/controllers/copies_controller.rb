class CopiesController < ApplicationController
  before_action :set_twitter_client,  only: [:create]

  def new
    @theme = Theme.find(params[:theme_id])
    @topic = Topic.find(params[:topic_id])
    @copy = Copy.new
  end

  def create
    @copy = Copy.new(copy_params)
    if @copy.save

       @twitter.update("#{@copy.text}\r")
      redirect_to root_path
    else
      render plain: "しっぱい〜〜〜"
    end
  end

  private

  def copy_params
    params.require(:copy).permit(:text).merge(theme_id: params[:theme_id], topic_id: params[:topic_id])
  end

  def set_twitter_client
    @twitter = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
  end
end
