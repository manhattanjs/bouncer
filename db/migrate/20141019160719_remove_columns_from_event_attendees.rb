class RemoveColumnsFromEventAttendees < ActiveRecord::Migration
  def change
    remove_column :event_attendees, :ticket_created_date
    remove_column :event_attendees, :manhattanjs_event_id
    remove_column :event_attendees, :ticket
    remove_column :event_attendees, :ticket_full_name
    remove_column :event_attendees, :ticket_first_name
    remove_column :event_attendees, :ticket_last_name
    remove_column :event_attendees, :ticket_email
    remove_column :event_attendees, :event
    remove_column :event_attendees, :void_status
    remove_column :event_attendees, :price
    remove_column :event_attendees, :ticket_reference
    remove_column :event_attendees, :order_reference
    remove_column :event_attendees, :order_email
  end
end
