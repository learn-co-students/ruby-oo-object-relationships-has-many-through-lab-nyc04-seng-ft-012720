class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def songs
        Song.all.select{|song| song.genre == self}
    end
    def self.all
        @@all
    end
    def artists
        thisgenre = self
        artistsarray = []
        Song.all.each{|song| 
            if song.genre == thisgenre 
                artistsarray << song.artist 
            end
        }
        return artistsarray
    end

end