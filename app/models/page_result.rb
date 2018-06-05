class PageResult < ApplicationRecord

  def show
    # added some condition for where clause
    @pages = PageResult.all.paginate(:page => params[:page], :per_page => 10)
  end

end
