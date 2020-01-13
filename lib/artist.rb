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
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      if artist.name == name 
        self.name = name
        self 
      else 
        self.name = Artist.new(name)
        self 
      end 
     end 
  end 
  
  def print_songs
    self.songs.each{|song| puts song.name}
  end 
  
end 