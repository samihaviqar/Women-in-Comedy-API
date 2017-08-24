class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  attr_reader :current_user

  protected
  def authenticate_request!
  	unless user_id_in_token? # if the user id is not in the token provided, we'll get back an error message.
  													 # see the methods http_token, auth_token, and user_id_in_token below
  		render json: {errors: ['Not authenticated'] }, status: :unauthorized
  		return
  	end
  	@current_user = User.find(auth_token[:user_id])
  rescue JWT::VerificationError, JWT::DecodeError # if there is any kind of verification or decoding error,
  																								# we'll likewise get an error message.
  	render json: { errors: ['Not authenticated'] }, status: :unauthorized
  end
  
  private
  def http_token
  	@http_token ||= if request.headers['Authorization'].present?
  		request.headers['Authorization'].split(' ').last
  	end
  end

  def auth_token
  	@auth_token ||= JsonWebToken.decode(http_token)
  end

  def user_id_in_token?
  	http_token && auth_token && auth_token[:user_id].to_i
  end


end
