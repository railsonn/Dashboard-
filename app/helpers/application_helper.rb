module ApplicationHelper
  def nav_active(path)
    current_page?(path) ? "active" : ""
  end

  def background_tr(index)
    if index.even?
      "background: #0d1b2a;
       color: white;"
    else 
      "background: #161B2E;
       color: white;"
    end
  end
end
