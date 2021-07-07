class Genre

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
        #iterates through all the songs and finds the songs that belong to that genre
    end

    def artists
        self.songs.map { |song| song.artist}
        #iterates over the genres collection of songs and collects the artist that owns each song
    end

end