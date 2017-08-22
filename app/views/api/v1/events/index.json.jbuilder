json.array! @events.each do |event|
				json.host_id event.user_id
				json.title event.title
				json.photo event.photo
				json.date event.date
				json.ticket_link event.ticket_link
				json.about event.about
				json.created_at event.created_at
				json.updated_at event.updated_at
end
