class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contributing
    @title = "Contributing"
  end
end
