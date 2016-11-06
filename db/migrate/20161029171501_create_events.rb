class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :desc
      t.date :event_date
      t.time :event_time
      t.string :venue_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.date :registration_start
      t.float :fee_adult
      t.float :fee_child
      t.float :fee_other
      t.float :goal
      t.float :raised
      t.timestamps
    end
  end
end
