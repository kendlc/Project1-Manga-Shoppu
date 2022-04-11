class CreateGenresMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_mangas, :id => false do |t|
      t.integer :genre_id
      t.integer :manga_id
    end
  end
end
