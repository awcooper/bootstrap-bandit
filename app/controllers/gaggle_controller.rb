class GaggleController < ApplicationController
  def gaggle
    @pages = PageResult.all.paginate(:page => params[:page], :per_page => 10)
  end
end
