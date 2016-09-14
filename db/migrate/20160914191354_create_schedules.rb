class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.timestamps :event_start
      t.timestamps :event_end
      t.boolean :clan_event
      t.integer :create_user

      t.timestamps null: false
    end
  end
end
