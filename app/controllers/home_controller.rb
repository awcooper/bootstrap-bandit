class HomeController < ApplicationController

  def home
    @pages = ["gaggle","eddit","metube", "gethub"]
  end
end
