# this controller handles all authentication requests to the API.

class AuthenticationController < ApplicationController
	def authenticate_user
		user = User.find_for_database_authentication(email: params[:email])
		if user.valid_password?(params[:password]) # if the user provides a valid password, we'll call the method
																							 # payload(user) below and render a resultant token along with 
																							 # some other info as a json object
			render json: payload(user)
		else
			render json: { errors: ['Invalid username/password!'] }, status: :unauthorized
		end
	end

	private

	def payload(user) # this method first checks if the user exists and if so, calls the method JsonWebToken.encode
										# which encodes their info (just id right now) into a token.
		return nil unless user and user.id
		{
			auth_token: JsonWebToken.encode({user_id: user.id}),
			user: {id: user.id, email: user.email}
		}
	end


end
