class SessionsController < ApplicationController

#login form
	def new
	end

#where the login form POSTs data
	def create
		user = User.where(:email => params[:email]).first
		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id
			# Merge in an existing cart if the user has one.
			# if session[:cart_id]
			# 	cart = Cart.find session[:cart_id]
			# 	cart.user_id = user.id
			# 	cart.save
			# end
			redirect_to root_path
		else 
			redirect_to new_session_path
		end

	end

#logout
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end