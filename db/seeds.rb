User.destroy_all
u1 = User.create :email => 'kk@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'll@ga.co', :password => 'chicken'
puts "#{ User.count } users"



Manga.destroy_all
m1 = Manga.create :title => 'One piece', :image => 'https://upload.wikimedia.org/wikipedia/en/a/a3/One_Piece%2C_Volume_1.jpg', :vol => 12
m2 = Manga.create :title => 'Goblin Slayer', :image => 'https://m.media-amazon.com/images/I/51rXu2iQnWL._AC_SY580_.jpg', :vol => 13
m3 = Manga.create :title => 'Ranking of Kings', :image => 'https://upload.wikimedia.org/wikipedia/en/5/51/%C5%8Csama_Ranking_volume_1_cover.jpg', :vol => 12
puts "#{ Manga.count } Mangas"

Author.destroy_all
a1 = Author.create :name => 'Eiichiro Oda'
a2 = Author.create :name => 'Kumo Kagyu'
puts "#{ Author.count } authors"



Genre.destroy_all
g1 = Genre.create :name => 'Adventure'
g2 = Genre.create :name => 'Fantasy'
puts "#{ Genre.count } genres"

puts "Books and authors"
m1.genres << g1 << g2
m2.genres << g1 << g2

puts "Books and authors"
a1.mangas << m1

Cart.destroy_all
Cart.create



