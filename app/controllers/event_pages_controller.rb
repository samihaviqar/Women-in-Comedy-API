class EventPagesController < ApplicationController
  layout "hello_world"

  def index
    all_upcoming_events = Event.all
    my_upcoming_events = Event.where(:host_id => 2)
    @event_page_props = {allUpcomingEvents: all_upcoming_events, myUpcomingEvents: my_upcoming_events}
  end
end
