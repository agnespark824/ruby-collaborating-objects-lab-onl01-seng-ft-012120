require 'pry'


class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  #
  #
  #
  #
  
  def files
    binding.pry
    Dir.entries(@path).each do |f|
      Dir.glob("*.mp3")
    end
  end
  

  def import
    files.each { |f| Song.new_by_filename(f) }
  end
  
end
