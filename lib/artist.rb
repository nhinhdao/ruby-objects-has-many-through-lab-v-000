class Artist
    attr_accessor :name, :song, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song.artist = self
    end

    def songs
        @@all.map {|i| i.artist == self}
    end

    def genres
        genre
    end

    def self.all
        @@all
    end
end
