class ManhattanjsEvent < ActiveRecord::Base
	has_many :event_attendees
	has_many :attendees, through: :event_attendees
end
