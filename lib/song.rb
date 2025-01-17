class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |value|
            if genre_count[value]
                genre_count[value] += 1
            else
                genre_count[value] = 1
            end
        end
        genre_count        
    end
    
    def self.artist_count
        artist_count = {}
        @@artists.each do |value|
            if artist_count[value]
                artist_count[value] += 1
            else
                artist_count[value] = 1
            end
        end
        artist_count        
    end
end