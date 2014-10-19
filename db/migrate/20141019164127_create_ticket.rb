class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :event_attendee, index: true
      t.references :manhattanjs_event, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.decimal :price
      t.string :payload
      t.timestamps
    end
  end
end
