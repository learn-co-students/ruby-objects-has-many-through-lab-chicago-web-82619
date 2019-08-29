class Genre
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
        Song.all.select{|obj| obj.genre == self}
    end
    def artists
        artists = []
        songs.map do |obj|
            artists << obj.artist
        end
        artists
    end
end