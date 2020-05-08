class Genre < ActiveRecord::Base
    has_many :works
    has_many :authors, through: :works

    def all_authors
        wrks = Work.all.select do |work|
            work.genre == self
        end
        wrks.map do |work|
            work.author
        end
    end

    def all_works

        wrks = Work.all.select do |work|
            work.genre == self
        end
        wrks.map do |work|
            work.title
        end
    end

    
end