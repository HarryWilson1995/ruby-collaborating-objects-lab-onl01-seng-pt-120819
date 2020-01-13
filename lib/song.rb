class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename) 
    song_name = filename.split(" - ")[1]
    artist_name=(filename.split(" - ")[0])
    title = Song.new(song_name)
    title.artist_name = artist
    title
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) 
  end 
  
  
end 