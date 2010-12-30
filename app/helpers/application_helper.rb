module ApplicationHelper

  #return a title on a per-page basis
  def title
    base_title = "Sample App"

    return base_title if @title.nil?
    return "#{base_title} | #{@title}"
  end

  # return logo info
  def logo
    logo = image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  
end
