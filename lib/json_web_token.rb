class JsonWebToken
	def self.encode(payload) # this method encodes the payload (payload = object with user info) into a token
		JWT.encode(payload, Rails.application.secrets.secret_key_base)
	end

	def self.decode(token) # this method decodes the token back into the original payload
		return HashWithIndifferentAccess.new(JWT.decode(token, Rails.application.secrets.secret_key_base)[0])
	rescue
		nil
	end
	
end