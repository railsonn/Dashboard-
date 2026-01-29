module AccountsHelper
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
