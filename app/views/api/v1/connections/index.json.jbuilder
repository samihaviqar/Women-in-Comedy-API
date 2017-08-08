json.array! @connections.each do |connection|

	json.sender_id connection.sender_id
	json.receiver_id connection.receiver_id
	json.status connection.status
	json.created_at connection.created_at
	json.updated_at connection.updated_at

end


