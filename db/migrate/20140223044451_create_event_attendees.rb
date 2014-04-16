class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
    	t.datetime :ticket_created_date
    	t.integer :manhattanjs_event_id
    	t.string :ticket
    	t.string :ticket_full_name
    	t.string :ticket_first_name
    	t.string :ticket_last_name
    	t.string :ticket_email
    	t.string :event
    	t.string :void_status
    	t.integer :price
    	t.string :ticket_reference
    	t.string :order_reference
    	t.string :order_email 	
    end
  end
end
