module ApplicationHelper
  
  #return a title on a per-page basis
  def title
    base_title = "sample_app"

    return base_title if @title.nil?
    return "#{base_title} | #{@title}"
  end
end
