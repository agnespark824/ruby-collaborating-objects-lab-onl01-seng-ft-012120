class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(self.path).select do |f|
      three_item_array = f.split(" - ")
      two_item_array = three_item_array[2].split(".")
      two_item_array[1] == "mp3"
    end
  end
  
    def files
    @files ||= Dir.entries(@path).
      Dir.glob("*.mp3")
  end

  def import
    files.each { |f| Song.new_by_filename(f) }
  end
  
end
