class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.text :address
      t.text :bank 
      t.integer :account
      t.integer :code
      t.float :subtotal
      t.float :total

      t.timestamps
    end
  end
end
