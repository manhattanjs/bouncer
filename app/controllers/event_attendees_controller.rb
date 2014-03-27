class EventAttendeesController < ApplicationController
  def index
  	@event = ManhattanjsEvent.first
  end
end
