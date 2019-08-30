class Artist
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
        #iterates through all the songs and finds the songs that belong to the artist. use select
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
        #creates a new song, song should know it belongs to the artist
    end 

    def genres
        self.songs.map {|song| song.genre} 
        #iterates over the artist's songs and collects the genre of each song
        #can use self.songs because the songs method already selects the songs that belong to the artist
    end

end