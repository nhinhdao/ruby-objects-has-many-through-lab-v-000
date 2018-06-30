class Genre
    attr_accessor :name, :songs, :artists

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs

    end

    def genres

    end

    def self.all
        @@all
    end
end
