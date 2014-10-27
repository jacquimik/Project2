module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
		  nav += "<li>#{ link_to('Shop', products_path) }</li>"
		  nav += "<li>#{ link_to('About', about_path) }</li>"
		  nav += "<li>#{ link_to('FAQ', faq_path) }</li>"
		  nav += "<li>#{ link_to('Blog', blog_path) }</li>"
		  nav += "<li>#{ link_to('Contact', contact_path) }</li>"
      	  nav += "<li>#{link_to('Edit profile  ', edit_user_path(@current_user))}</li>"  
      	  nav += "<li>#{ link_to('Sign out ' + @current_user.firstname , new_session_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"      
      	elsif @admin.present?
	  	  nav += "<li>#{link_to('Add category', new_category_path) }</li>"
	  	  nav += "<li>#{link_to('Add product', new_product_path) }</li>"
    	else
      	  nav += "<li>#{link_to('Sign up', new_user_path) }</li>"
      	  nav += "<li>#{ link_to('Login', new_session_path) }</li>"
      	  nav += "<li>#{ link_to('Shop', products_path) }</li>"
      	  nav += "<li>#{ link_to('About', about_path) }</li>"
      	  nav += "<li>#{ link_to('FAQ', faq_path) }</li>"
      	  nav += "<li>#{ link_to('Blog', blog_path) }</li>"
	  	  nav += "<li>#{ link_to('Contact', contact_path) }</li>"
		end
	nav
	end
end