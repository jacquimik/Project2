class SessionsController < ApplicationController

#login form
	def new
	end

#where the login form POSTs data
	def create
		user = User.where(:firstname => params[:email]).first
		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path
		else 
			redirect_to session_path
		end
	end

#logout
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end