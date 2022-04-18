class CreateMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :mangas do |t|
      t.text :title
      t.text :image
      t.text :author
      t.text :synopsis
      t.integer :vol

      t.timestamps
    end
  end
end
