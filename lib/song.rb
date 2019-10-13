class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(artist, name, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
end