# == Schema Information
#
# Table name: event_attendees
#
#  id                   :integer          not null, primary key
#  ticket_created_date  :datetime
#  manhattanjs_event_id :integer
#  ticket               :string(255)
#  ticket_full_name     :string(255)
#  ticket_first_name    :string(255)
#  ticket_last_name     :string(255)
#  ticket_email         :string(255)
#  event                :string(255)
#  void_status          :string(255)
#  price                :integer
#  ticket_reference     :string(255)
#  order_reference      :string(255)
#  order_email          :string(255)
#

class EventAttendee < ActiveRecord::Base
  belongs_to :manhattanjs_event
end
