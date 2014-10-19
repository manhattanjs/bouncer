class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :ticket, index: true
      t.references :event_attendee, index: true
      t.timestamps
    end
  end
end
