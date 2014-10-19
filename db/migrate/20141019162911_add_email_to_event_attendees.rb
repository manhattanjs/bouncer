class AddEmailToEventAttendees < ActiveRecord::Migration
  def change
    add_column :event_attendees, :email, :string
    add_column :event_attendees, :created_at, :datetime
    add_column :event_attendees, :updated_at, :datetime
  end
end
