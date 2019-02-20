class CopiesController < ApplicationController
  before_action :set_twitter_client

  def new
    @copy = Copy.new
  end

  def create
    @copy = Copy.new(copy_params)
    if @copy.save
       @twitter.update("#{@copy.text}\r")
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def copy_params
    params.require(:copy).permit(:text, :topic_id, :user_id)
  end

  def set_twitter_client
    @twitter = Twitter::REST::Client.new do |config|
      config.consumer_key        = "TWITTER_API_KEY"
      config.consumer_secret     = "TWITTER_API_SECRET"
      config.access_token        = "TWITTER_ACCESS_TOKEN"
      config.access_token_secret = "TWITTER_ACCESS_SECRET"
    end
  end
end
