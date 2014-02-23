class CreateMjsEvents < ActiveRecord::Migration
  def change
    create_table :mjs_events do |t|
      t.string :name
      t.datetime :event_date

      t.timestamps
    end
  end
end
