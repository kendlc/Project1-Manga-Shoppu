User.destroy_all
u1 = User.create :email => 'kk@ga.co', :username => 'K', :password => 'chicken', :admin => true
u2 = User.create :email => 'll@ga.co', :username => 'L', :password => 'chicken'
puts "#{ User.count } users"



Manga.destroy_all
m1 = Manga.create :title => 'Jujutsu Kaisen', :image => 'https://upload.wikimedia.org/wikipedia/en/4/46/Jujutsu_kaisen.jpg', :author => 'Gege Akutami' ,:synopsis => "Hidden in plain sight, an age-old conflict rages on. Supernatural monsters known as 'Curses' terrorize humanity from the shadows, and powerful humans known as 'Jujutsu' sorcerers use mystical arts to exterminate them. When high school student Yuuji Itadori finds a dried-up finger of the legendary Curse Sukuna Ryoumen, he suddenly finds himself joining this bloody conflict.

Attacked by a Curse attracted to the finger's power, Yuuji makes a reckless decision to protect himself, gaining the power to combat Curses in the process but also unwittingly unleashing the malicious Sukuna into the world once more. Though Yuuji can control and confine Sukuna to his own body, the Jujutsu world classifies Yuuji as a dangerous, high-level Curse who must be exterminated.

Detained and sentenced to death, Yuuji meets Satoru Gojou—a teacher at Jujutsu High School—who explains that despite his imminent execution, there is an alternative for him. Being a rare vessel to Sukuna, if Yuuji were to die, then Sukuna would perish too. Therefore, if Yuuji were to consume the many other remnants of Sukuna, then Yuuji's subsequent execution would truly eradicate the malicious demon. Taking up this chance to make the world safer and live his life for a little longer, Yuuji enrolls in Jujutsu High, jumping headfirst into a harsh and unforgiving battlefield.",:vol => 19
m2 = Manga.create :title => 'Goblin Slayer', :image => 'https://m.media-amazon.com/images/I/51rXu2iQnWL._AC_SY580_.jpg', :author => 'Kumo Kagyu', :synopsis => "In a world stalked by great beasts and frightening monsters, a more common creature is often overlooked: the goblin. While not as outright threatening as some of the larger nightmares out there, goblins are capable of grotesque feats of brutality in their own rights, often joining together in large bands and spreading destruction.

Enter the justly titled Goblin Slayer, whose sole mission in life is to wreak havoc on goblins, murdering as many of them as he possibly can. Utilizing the realm's reigning mission system for adventurers, Goblin Slayer makes sure to accept any and all goblin-related missions.

One of these quests brings him into contact with a young Priestess, who he rescues from an assault at the hands of a particularly nasty group of goblins who have raped and slaughtered her entire party. Although initially averse to human connection, Goblin Slayer begrudgingly finds himself developing an attachment to Priestess and the other party members that they gain along the way. Often tugged into massive adventures that pull him away from his goblin-murdering comfort zone, Goblin Slayer works to keep his party safe from harm and gradually overcomes the childhood trauma that crafted him into the killing machine he has become.",:vol => 13
m3 = Manga.create :title => 'Ranking of Kings', :image => 'https://upload.wikimedia.org/wikipedia/en/5/51/%C5%8Csama_Ranking_volume_1_cover.jpg', :author => 'Sosuke Toka', :synopsis => 'The web manga centers around Bojji, a deaf, powerless prince who cannot even wield a childrens sword. As the firstborn son, he strives hard and dreams of becoming the worlds greatest king. However, people mutter about him behind his back as "a good-for-nothing prince" and "no way he can be king."

Bojji is able to make his first ever friend, "Kage" (shadow)—a literal shadow on the ground who somehow understands Bojji well. (Kage is a survivor of the Kage assassin clan that was all but wiped out. No longer a killer, Kage now makes ends meet by stealing.) The story follows Bojjis coming-of-age as he meets various people in his life, starting with his fateful encounter with Kage.', :vol => 12
puts "#{ Manga.count } Mangas"





