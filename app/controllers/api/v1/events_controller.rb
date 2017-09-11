 class Api::V1::EventsController < ApplicationController
	# skip_before_action :verify_authenticity_token
	protect_from_forgery with: :null_session

	def index
		@events = Event.all
		render 'index.json.jbuilder'
	end

	def show
		@event = Event.find(params[:id])
		render 'show.json.jbuilder'
	end

	def create
    @event = Event.new(
      user_id: params[:user_id],
      title: params[:title],
      photo: params[:photo],
      date: params[:date],
      time: params[:time],
      ticket_link: params[:ticket_link],
      location: params[:location],
      about: params[:about])
    if (@event.save)
      render json: @event.as_json(only: [:id, :title])
    end
  end

	def update
		@event = Event.find(params[:id])
		@event.update(
			host_id: params[:host_id],
			title: params[:title],
			photo: params[:photo],
			date: params[:date],
			ticket_link: params[:ticket_link],
			about: params[:about]
		)
		render 'show.json.jbuilder'
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
	end
end
