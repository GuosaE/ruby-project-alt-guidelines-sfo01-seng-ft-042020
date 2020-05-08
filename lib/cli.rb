class CommandLineInterface

    def greet
        puts 'Welcome to Literapedia, the best collaborative resource for information on world literature!'
    end

    def run
        greet
        puts "\nPlease enter a number from 1 to 3 or a category name listed below to begin: \n\n1. Literary Work\n\n2. Author\n\n3. Genre\n\nOr enter 'exit' to quit."
        input = gets.chomp

        if input == "1" || input == "Literary Work"
            puts "Would you like to:\n\n
            a) Add a new literary work to the archive.\n\n
            b) View information about a literary work.\n\n 
            c) Update the title for a literary work.\n\n
            d) Remove an erroneous entry for a literary work from the archive.\n"
            response = gets.chomp
            if response == "a"
                puts "Enter the title."
                response2 = gets.chomp
                puts "Enter the country of origin of the work."
                response3 = gets.chomp
                puts "Enter the century the work was published."
                response4 = gets.chomp
                puts "Enter the original language of the work."
                response5 = gets.chomp
                puts "Enter the type (novel, play, poem, etc.) of the work."
                response6 = gets.chomp
                puts "Enter the author of the work."
                response7 = gets.chomp
                puts "Enter the country that the author of the work is associated with."
                response8 = gets.chomp
                puts "Enter the type of author (novelist, playwright, poet, etc.)."
                response9 = gets.chomp
                puts "Enter the genre of the work."
                response10 = gets.chomp
                work1 = Work.create(title: response2, country: response3, century: response4, language: response5, type_of_work: response6)
                author1 = Author.find_or_create_by(name: response7, country: response8, type_of_author: response9) 
                genre1 = Genre.find_or_create_by(name: response10)
                work1.author = author1
                work1.genre = genre1
                puts "Thank you for your contribution! The work has been entered into the archive."
                self.run
            elsif response == "b"
                puts "Enter the title of the work."
                response2 = gets.chomp
                work1 = Work.find_by(title: response2)
                if work1
                    work1
                    puts work1.title
                    puts work1.country
                    puts work1.century
                    puts work1.language
                    puts work1.type_of_work
                    self.run
                else
                    puts "That work does not exist in the archive. Please enter a different title."
                    self.run
                end
            elsif response == "c"
                puts "Enter the title of the work."
                response2 = gets.chomp
                work1 = Work.find_by(title: response2)
                if work1
                    puts "Enter the new title of the work."
                    response3 = gets.chomp
                    work1.update(title: response3)
                    puts work1.title
                    puts "The title has been modified successfully."
                    self.run
                else
                    puts "That work does not exist in the archive."
                    self.run
                end
            elsif response == "d"
                puts "Enter the title of the work you wish to remove."
                response2 = gets.chomp
                work1 = Work.find_by(title: response2)
                if work1
                    work1.destroy
                    puts "The work has been removed successfully. Thank you!"
                    self.run
                else
                    puts "That work does not exist in the archive."
                    self.run
                end
            else
                puts "Sorry, but your entry is invalid. Please enter a, b, c, or d."
                self.run
            end
        elsif input == "2" || input == "Author"
            puts "Would you like to:\n\n
            a) Find an author and view information available about that author.\n\n 
            b) View the list of works by an author.\n\n
            c) View the genres this author has worked in.\n\n
            d) Find an author and modify the classification (novelist, playwright, poet, etc.) for that author.\n\n"
            response = gets.chomp
            if response == "a"
                puts "Enter author name."
                response2 = gets.chomp
                auth = Author.find_by(name: response2)
                puts auth.name
                puts auth.country
                puts auth.type_of_author
                self.run
            elsif response == "b"
                puts "Enter author name."
                response2 = gets.chomp
                auth = Author.find_by(name: response2)
                auth.author_works
                self.run
            elsif response == "c"
                puts  "Enter author name."
                response2 = gets.chomp
                auth = Author.find_by(name: response2)
                auth.author_genres
                self.run
            elsif response == "d"
                puts "Enter author name."
                response2 = gets.chomp
                auth = Author.find_by(name: response2)
                if auth
                    puts "Enter the new classification for the author."
                    response3 = gets.chomp
                    auth.update(type_of_author: response3) 
                    puts auth.name
                    puts auth.type_of_author
                    puts "The author's classification has been modified successfully."
                    self.run
                else             
                    puts "That author does not exist in the archive."
                    self.run
                end
            else
                puts "Sorry, but your entry is invalid. Please enter a, b, c, or d."
                self.run
            end
        elsif input == "3" || input == "Genre"
            puts "Would you like to:\n\n 
            a) View the list of works in this genre.\n\n
            b) View the list of authors associated with this genre.\n\n" 
            response = gets.chomp 
            if response == "a"
                puts "Enter a genre."
                response2 = gets.chomp
                genre1 = Genre.find_by(name: response2)
                puts genre1.works
                self.run
            elsif response == "b"
                puts "Enter a genre."
                response2 = gets.chomp
                genre1 = Genre.find_by(name: response2)
                puts genre1.authors
                self.run
            else
                puts "Sorry, but your entry is invalid. Please enter a or b."
                self.run
            end 
        elsif input == "exit"
            return         
        else
            puts "Sorry, but your entry is invalid. Please enter 1, 2, or 3, or the name of a valid category to start utilizing Literapedia."
            self.run
        end
    end

    
end