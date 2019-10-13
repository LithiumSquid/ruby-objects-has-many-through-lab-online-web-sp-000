class Genre
  attr_accessor :name, :artist, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select do |genre|
      song.genre == self
    end
  end
  
  def artists
    Artist.all.select do |genre|
      artist.genre == self
    end
  end
    
    
  def self.all
    @@all
  end
  
end