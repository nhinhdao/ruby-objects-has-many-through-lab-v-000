class Artist
    attr_accessor :name, :songs, :genres

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Artist.all.select {|i| i.artist == self}
    end

    def genres
        Artist.map {|i| i.genre}
    end

    def self.all
        @@all
    end
end
