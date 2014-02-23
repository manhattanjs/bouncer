class RenameMjsEvent < ActiveRecord::Migration
  def change
  	rename_table :mjs_events, :manhattanjs_events
  end
end
