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
        Song.all.select{|obj| obj.artist == self}
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        genres = []
        songs.each do |obj|
            genres << obj.genre
        end
        genres
    end
end