class GethubController < ApplicationController

  def gethub
  end

  def load_more
    render partial: 'gethub/feed_posts'
  end

end
