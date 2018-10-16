module ApplicationHelper
  def full_title page_title = ""
    base_title = "Web music"
    page_title.blank? ? base_title : page_title + " | " + base_title
  end
end
