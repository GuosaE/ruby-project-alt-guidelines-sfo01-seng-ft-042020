
# 10.times do
#     Author.create(
#         name: Faker::Name.name, 
#         country: Faker::Address.country, 
#         type_of_author: Faker::Job.title)
# end

# 10.times do
#     Genre.create(
#         name: Faker::Book.genre)
# end


# 10.times do
#     Work.create(
#         title: Faker::Book.title, 
#         country: Faker::Address.country, 
#         century: Faker::Ancient.primordial, 
#         language: Faker::Nation.language, 
#         type_of_work: Faker::Marketing.buzzwords, 
#         author_id: Author.all.sample.id, 
#         genre_id: Genre.all.sample.id)
# end 


frank_herbert = Author.create(name: "Frank Herbert", country: "USA", type_of_author: "novelist")
fyodor_dostoevksy = Author.create(name: "Fyodor Dostoevsky", country: "Russia", type_of_author: "novelist")
arthur_conan_doyle = Author.create(name: "Arthur Conan Doyle", country: "UK", type_of_author: "novelist")
kahlil_gibran = Author.create(name: "Kahlil Gibran", country: "Lebanon", type_of_author: "poet")
henrik_ibsen = Author.create(name: "Henrik Ibsen", country: "Norway", type_of_author: "playwright")
hg_wells = Author.create(name: "H.G. Wells", country: "UK", type_of_author: "novelist")
herman_hesse = Author.create(name: "Herman Hesse", country: "Germany", type_of_author: "novelist")
leo_tolstoy = Author.create(name: "Leo Tolstoy", country: "Russia", type_of_author: "novelist")
thomas_mann = Author.create(name: "Thomas Mann", country: "Germany", type_of_author: "novelist")


science_fiction = Genre.create(name: "Science Fiction")
philosophical = Genre.create(name: "Philosophical")
mystery = Genre.create(name: "Mystery")
mystical = Genre.create(name: "Mystical")
psychological = Genre.create(name: "Psychological")
historical = Genre.create(name: "Historical")


dune = Work.create(title: "Dune", country: "USA", century: "20th century", language: "English", type_of_work: "novel", author_id: 1, genre_id: 1)
the_brothers_karamazov = Work.create(title: "The Brothers Karamazov", country: "Russia", century: "19th century", language: "Russian", type_of_work: "novel", author_id: 2, genre_id:2)
the_hound_of_the_baskervilles = Work.create(title: "The Hound of the Baskervilles", country: "UK", century: "19th century", language: "English", type_of_work: "novel", author_id: 3, genre_id: 3)
sand_and_foam = Work.create(title: "Sand and Foam", country: "Lebanon", century: "20th century", language: "English", type_of_work: "poetry", author_id: 4, genre_id: 4)
the_wild_duck = Work.create(title: "The Wild Duck", country: "Norway", century: "19th century", language: "Norwegian", type_of_work: "play", author_id: 5, genre_id: 5)
the_time_machine = Work.create(title: "The Time Machine", country: "UK", century: "20th century", language: "English", type_of_work: "novel", author_id: 6, genre_id: 1)
the_glass_bead_game = Work.create(title: "The Glass Bead Game", country: "Germany", century: "20th century", language: "German", type_of_work: "novel", author_id: 7, genre_id: 2)
war_and_peace = Work.create(title: "War and Peace", country: "Russia", century: "19th century", language: "Russian", type_of_work: "novel", author_id: 8, genre_id: 6)
the_magic_mountain = Work.create(title: "The Magic Mountain", country: "Germany", century: "20th century", language: "German", type_of_work: "novel", author_id: 9, genre_id: 2)
the_adolescent = Work.create(title: "The Adolescent", country: "Russia", century: "20th century", language: "Russian", type_of_work: "novel", author_id: 2, genre_id: 5)







# Frank Herbert - Dune, Bram Stoker - Dracula, Fyodor Dostoevsky - The Brothers Karamazov
# Fyodor Dostoevsky - The Adolescent, Leo Tolstoy - War and Peace
# Leo Tolstoy - Anna Karenina, Thomas Mann - The Magic Mountain, Herman Hesse - The Glass Bead Game
# Yukio Mishima - The Sailor Who Fell From Grace with the Sea
# Haruki Murakami - The Wind-Up Bird Chronicle, Robert Musil - The Man Without Qualities
# Arthur Conan Doyle - The Hound of the Baskervilles
# Kahlil Gibran - Broken Wings, Kahlil Gibran - Sand and Foam, H.G. Wells - The Time Machine
# Arthur C. Clarke - Childhood's End, Henrik Ibsen - The Wild Duck