class Artist
    attr_accessor :name, :song, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def songs
        song
    end

    def genres
        genre
    end

    def self.all
        @@all
    end
end
