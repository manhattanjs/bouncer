class EventAttendeesController < ApplicationController
  def index
  	@events = ManhattanjsEvent.upcoming
  end
end
