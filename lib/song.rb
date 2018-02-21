class Song
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    
    @@genres << genre
    
    @@artists << artist

  end
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    out = Hash.new(0)
    @@genres.each do |genre|
      out[genre] += 1
    end
    out
  end
  
  def self.artist_count
    out = Hash.new(0)
    @@artists.each do |artist|
      out[artist] += 1
    end
    out
  end
  
end
