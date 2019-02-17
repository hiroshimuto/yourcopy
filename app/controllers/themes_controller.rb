class ThemesController < ApplicationController

  # 投稿一覧
  def index
    @themes = Theme.all.includes(:topics)
  end
end
