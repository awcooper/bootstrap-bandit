class HomeController < ApplicationController

  def home
    @pages = ["gaggle","eddit","metube"]
  end
end
