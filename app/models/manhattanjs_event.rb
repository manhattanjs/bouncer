class ManhattanjsEvent < ActiveRecord::Base
	has_many :event_attendees
end
