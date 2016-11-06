class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.float :amount
      t.text :comment
      t.boolean :paid
      t.references :event, foreign_key: true
    end
  end
end
