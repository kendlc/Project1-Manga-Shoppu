class CreateVolumes < ActiveRecord::Migration[5.2]
  def change
    create_table :volumes do |t|
      t.text :title
      t.float :price
      t.text :image
      t.integer :manga_id
      t.integer :order_id

      t.timestamps
    end
  end
end
