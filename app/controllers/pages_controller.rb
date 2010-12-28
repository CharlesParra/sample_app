class PagesController < ApplicationController
  def home
      @title = "Home"
  end

  def privacy
      @title = "Privacy Policy"
  end

  def about
      @title = "About"
  end  

  def help
      @title = "Help"
  end  

end
