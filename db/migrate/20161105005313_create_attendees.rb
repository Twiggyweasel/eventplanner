class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.string :name
      t.integer :entry_fee
      t.references :team, foreign_key: true
    end
  end
end
