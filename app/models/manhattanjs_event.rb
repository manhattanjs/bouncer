# == Schema Information
#
# Table name: manhattanjs_events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  event_date :datetime
#  created_at :datetime
#  updated_at :datetime
#

class ManhattanjsEvent < ActiveRecord::Base
	has_many :event_attendees
	has_many :attendees, through: :event_attendees
end
