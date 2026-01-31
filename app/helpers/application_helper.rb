module ApplicationHelper
  def nav_active(path)
    current_page?(path) ? "active" : ""
  end

  def check(theme)
    puts "#{theme} =================================================="
  end
end
