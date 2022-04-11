User.destroy_all
u1 = User.create :email => 'kk@ga.co'
u2 = User.create :email => 'll@ga.co'
puts "#{ User.count } users"

Order.destroy_all
o1 = Order.create

Manga.destroy_all
m1 = Manga.create :title => 'Naruto'
m2 = Manga.create :title => 'Bleach'
puts "#{ Manga.count } Mangas"

Author.destroy_all
a1 = Author.create :name => 'Masashi Kishimoto'
a2 = Author.create :name => 'Kubo Tite'
puts "#{ Author.count } authors"

Volume.destroy_all
v1 = Volume.create :title => 'Naruto Uzumaki'
v2 = Volume.create :title => 'The Worst Client'
puts "#{ Volume.count } volumes"

Genre.destroy_all
g1 = Genre.create :name => 'Adventure'
g2 = Genre.create :name => 'Fantasy'
puts "#{ Genre.count } genres"

puts "Books and authors"
m1.genres << g1 << g2
m2.genres << g1 << g2

puts "Books and volumes"
m1.volumes << v1 << v2

puts "Books and authors"
a1.mangas << m1

puts "volumes and orders"
o1.volumes << v1

puts "user and orders"
u2.orders << o1
