class ManhattanjsEvent < ActiveRecord::Base
	has_many :event_attendees
	has_many :attendees, through: :event_attendees


  def self.upcoming
    where("event_date > ?", Time.now)
  end

  def upcoming?
    self.event_date > Time.now
  end
end