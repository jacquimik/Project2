module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?

			nav += "<header>"
				nav += "<ul class=\"inline-list\">"
					nav += "<li><a href=\"#\">" + link_to('Home', root_path) + "</a></li>"
					nav += "<li>" + link_to('Shop', products_path) + "</li>"
					nav += "<li>" + link_to('About', about_path) + "</li>"
					nav += "<li>" + link_to('FAQ', faq_path) + "</li>"
					nav += "<li>" + link_to('Blog', blog_path) + "</li>"
					nav += "<li>" + link_to('Contact', contact_path) + "</li>"
					nav += "<li>" + link_to('Edit profile  ', edit_user_path(@current_user)) + "</li>"  
				  nav += "<li>" + link_to('Sign out ' + @current_user.firstname , new_session_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) + "</li>"      
					if @admin.present?
						nav += "<li>" + link_to('Add category', new_category_path) + "</li>"
						nav += "<li>" + link_to('Add product', new_product_path) + "</li>"	
					end
				nav += "</ul>"	
		else 
			nav += "<ul class=\"inline-list\">"
				nav += "<li>" + link_to('Sign up', new_user_path) + " </li>"
				nav += "<li>" + link_to('Login', new_session_path) + " </li>"
				nav += "<li>" + link_to('Shop', products_path) + " </li>"
				nav += "<li>" + link_to('About', about_path) + " </li>"
				nav += "<li>" + link_to('FAQ', faq_path) + " </li>"
				nav += "<li>" + link_to('Blog', blog_path) + " </li>"
				nav += "<li>" + link_to('Contact', contact_path) + " </li>"
			nav += "</ul>"
		end
			nav += "<a class=\"header-image\" href=\"http://www.sydneysister.com\">"
				nav += "<img class=\"sydney-sisters-header\" src=\"http://i.imgur.com/yUpKyKn.png\" id=\"header-img\" />"
			nav += "</a>"
		nav += "</header>"

		secondNav = ''
		secondNav += "<nav class=\"top-bar block\" data-topbar role=\"navigation\">"
			secondNav += "<section class=\"top-bar-section\">"
				secondNav += "<ul class=\"left\">"
					secondNav += "<li>" + link_to("New In", about_path) + "</li>"
					secondNav += "<li class=\"has-dropdown\">" + link_to("Dresses", about_path)
						secondNav += "<ul class=\"dropdown\">"
							secondNav += "<li>" + link_to("Party Dresses", about_path) + "</li>"
							secondNav += "<li>" + link_to("Maxi Dresses", about_path) + "</li>"
							secondNav += "<li>" + link_to("Casual Dresses", about_path) + "</li>"
						secondNav += "</ul>"
					secondNav += "</li>"
					secondNav += "<li class=\"has-dropdown\">" + link_to("Tops", about_path)
						secondNav += "<ul class=\"dropdown\">"
							secondNav += "<li>" + link_to("Party Tops", about_path) + "</li>"
							secondNav += "<li>" + link_to("Casual Tops", about_path) + "</li>"
							secondNav += "<li>" + link_to("T-shirts", about_path) + "</li>"
							secondNav += "<li>" + link_to("Long Sleeved Tops", about_path) + "</li>"
							secondNav += "<li>" + link_to("Crop Tops", about_path) + "</li>"
						secondNav += "</ul>"
					secondNav += "</li>"
					secondNav += "<li class=\"has-dropdown\">" + link_to("Bottoms", about_path)
						secondNav += "<ul class=\"dropdown\">"
							secondNav += "<li>" + link_to("Shorts", about_path) + "</li>"
							secondNav += "<li>" + link_to("Jeans", about_path) + "</li>"
							secondNav += "<li>" + link_to("Skirts", about_path) + "</li>"
							secondNav += "<li>" + link_to("Pants", about_path) + "</li>"
						secondNav += "</ul>"
					secondNav += "</li>"
					secondNav += "<li>" + link_to("Playsuits", about_path) + "</li>"
					secondNav += "<li class=\"has-dropdown\">" + link_to("Accessories", about_path)
						secondNav += "<ul class=\"dropdown\">"
							secondNav += "<li>" + link_to("Bags", about_path) + "</li>"
							secondNav += "<li>" + link_to("Shoes", about_path) + "</li>"
							secondNav += "<li>" + link_to("Jewellery", about_path) + "</li>"
						secondNav += "</ul>"
					secondNav += "</li>"
					secondNav += "<li class=\"has-dropdown\">" + link_to("Outerwear", about_path)
						secondNav += "<ul class=\"dropdown\">"
							secondNav += "<li>" + link_to("Jackets", about_path) + "</li>"
							secondNav += "<li>" + link_to("Coats", about_path) + "</li>"
							secondNav += "<li>" + link_to("Kimonos", about_path) + "</li>"
							secondNav += "<li>" + link_to("Knitwear", about_path) + "</li>"
						secondNav += "</ul>"
					secondNav += "</li>"
					secondNav += "<li>" + link_to("Sale", about_path) + "</li>"
				secondNav += "</ul>"
			secondNav += "</section>"
		secondNav += "</nav>"

		nav + secondNav
	end


# =======
# 		  nav += "<li>#{ link_to('Shop', products_path) }</li>"
# 		  nav += "<li>#{ link_to('About', about_path) }</li>"
# 		  nav += "<li>#{ link_to('FAQ', faq_path) }</li>"
# 		  nav += "<li>#{ link_to('Blog', blog_path) }</li>"
# 		  nav += "<li>#{ link_to('Contact', contact_path) }</li>"
#       	  nav += "<li>#{link_to('Edit profile  ', edit_user_path(@current_user))}</li>"  
#       	  nav += "<li>#{ link_to('Sign out ' + @current_user.firstname , new_session_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"      
#       # 	elsif @current_user.admin.present?
# 	  	  # nav += "<li>#{link_to('Add category', new_category_path) }</li>"
# 	  	  # nav += "<li>#{link_to('Add product', new_product_path) }</li>"
#     	else
#       	  nav += "<li>#{link_to('Sign up', new_user_path) }</li>"
#       	  nav += "<li>#{ link_to('Login', new_session_path) }</li>"
#       	  nav += "<li>#{ link_to('Shop', products_path) }</li>"
#       	  nav += "<li>#{ link_to('About', about_path) }</li>"
#       	  nav += "<li>#{ link_to('FAQ', faq_path) }</li>"
#       	  nav += "<li>#{ link_to('Blog', blog_path) }</li>"
# 	  	  nav += "<li>#{ link_to('Contact', contact_path) }</li>"
# 		end
# 	nav

	end
end