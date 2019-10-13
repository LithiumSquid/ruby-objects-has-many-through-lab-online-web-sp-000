class Artist
  attr_accessor :name, :genre, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(song, genre)
    Song.new(self, song, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.song.select do |song|
      song.genre
    end
  end
  
  def self.all
    @@all
  end
  
  
  
end