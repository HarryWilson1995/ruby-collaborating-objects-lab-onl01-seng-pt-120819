class MP3Importer 
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
      @files = Dir.glob("#{@path}/*.mp3").collect{|file| 
  end
  
  
  def import 
    
  end 
  
end 