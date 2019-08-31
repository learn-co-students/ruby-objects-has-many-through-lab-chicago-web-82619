class Genre
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |song| song.genre == self}
    end

    # collect == map
    # reduce == inject
    # find == select

    def artists
        songs.collect { |song| song.artist }
    end


end
