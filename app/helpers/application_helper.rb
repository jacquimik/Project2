module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
				"<div class='welcome'>"
   	 	nav += "<li>Hello #{ @current_user.firstname }</li> "
      	"</div>"
      nav += "<li>#{ link_to('Sign Up', new_user_path) }</li>"
      nav += "<li>#{link_to('Edit profile  ', edit_user_path(@current_user))}</li>"        
      nav += "<li>#{link_to('Sign out ' + @current_user.firstname, new_session_path, :method => :delete, :data => {:confirm => 'Are you sure?'})}  "
    else 
      nav += "<li>#{link_to('Sign up', new_user_path) }</li>"
      nav += "<li>#{ link_to('Login', new_session_path) }</li>"
      nav += "<li>#{ link_to('About', about_path) }</li>"

	end
	nav

end
end