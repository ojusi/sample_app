module ApplicationHelper

  # Return the full title for each page
  def full_title(page_title)
    base_title = "Ingredient Guru's 'What's in it?' Blog"
    if page_title.empty?
      base_title 
    else
     "#{base_title} | #{page_title}"
    end  
  end
end
