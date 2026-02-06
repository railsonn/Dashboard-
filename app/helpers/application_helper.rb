module ApplicationHelper
  def nav_active(path)
    if path.include?(controller_name)
      "active"
    else 
      ""
    end
  end
end
