class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer "quantity"
      t.integer "volume_id"
      t.integer "user_id"
      t.decimal "total"
      t.decimal "unit_price"
      t.timestamps
    end
  end
end
