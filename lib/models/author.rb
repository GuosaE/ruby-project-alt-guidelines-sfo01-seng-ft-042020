class Author < ActiveRecord::Base
    has_many :works
    has_many :genres, through: :works

    def author_works
        self.works
    end

    def author_genres
        self.genres
    end

end