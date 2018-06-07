class EdditController < ApplicationController
  def eddit
    @posts = EdditPost.all.paginate(:page => params[:page], :per_page => 10)
  end
end
