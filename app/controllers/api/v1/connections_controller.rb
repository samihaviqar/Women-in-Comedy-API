class Api::V1::ConnectionsController < ApplicationController
	def index
		#find_by user ID to "show all my connections"
		#find ConnectionRequest sender_id's where receiver_id is current user and where status is "yes or true"
		#this should show all "my connections"
		if current_user
			@connections = ConnectionRequest.where(receiver_id: current_user.id, status:"true")
		else
			flash[:danger] = "Please log in or sign up to view connections."
			#redirect_to "/log_in"
		end
	end

	def show
	end

	def send_request
		#action from sender_id to receiver_id when sender_id clicks on "connect" 
		#on another user's profile
		#creates alert in receiver_id's profile
		#redirect to some confirmation page
	end

	def accept_request
		#action when current user (in the situation - the receiver_id needs to verify connection reuqest)
		#change status for a sender_id and receiver_id (current_user) combo to be "yes" if current_user clicked "accept"
		#redirect to some confirmation page
	end

	def show_connection_requests
		#ability to click on the alert icon and be able to see all connection requests for my own user_id
		#find all sender_id's where receiver_id is current user and where status is "pending"
	end

	def show_declined_requests
		#shows all requests that were declined (where status = "no" or "false")
	end
end
