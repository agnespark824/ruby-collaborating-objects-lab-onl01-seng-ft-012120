class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path) do |f|
      Dir.glob("*.mp3")
    end
  end
  

  def import
    files.each { |f| Song.new_by_filename(f) }
  end
  
end
