module ApplicationHelper
  def intellinav
  nav = ''
  	if @current_user.present?
      "<div class='welcome'>"
      "</div>"
      "<div class='nav'>"
    	# nav += "<li>" + link_to('Dashboard', countries_path) + "</li> "
    	nav += "<li>" + link_to('Whats new', index_category_path) + "</li> "
    	nav += "<li>" + link_to('Add Entry', new_product_path) + "</li> "
    	nav += "<li>" + link_to('View map', product_path) + "</li> "
      nav += "<li>" + link_to('View all items', product_path) + "</li> "
    	nav += "<li>#{ link_to('Sign out ' + @current_user.name , login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
 		 else
    	nav += "<li>#{ link_to('Sign up', new_user_path) }</li> "
    	nav += "<li>#{ link_to('Sign in', login_path) }</li>"
    end
  end
end
