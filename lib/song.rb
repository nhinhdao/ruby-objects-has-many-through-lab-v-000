class Song
    attr_accessor :name, :song, :genre

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
