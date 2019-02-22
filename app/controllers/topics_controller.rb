class TopicsController < ApplicationController
  before_action :topic_info, only:[:show]
  def show
    @copies = Copy.where(topic_id: @topic).includes(:user)
  end

  private

  def topic_info
    @theme = Theme.find(params[:id])
    @topic = @theme.topics.find(params[:id])
  end

end
