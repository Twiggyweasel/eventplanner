class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code
      t.date :expiration
      t.date :start
      t.float :discount
      t.boolean :active, default: true
      t.references :event, foreign_key: true
    end
  end
end
