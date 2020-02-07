require 'pry'


class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
#Dir.entries(@path)
#["Action Bronson - Larry Csonka - indie.mp3",
#"Real Estate - It's Real - hip-hop.mp3",
#"Real Estate - Green Aisles - country.mp3",
#"..",
# "Thundercat - For Love I Come - dance.mp3",
#"."]
  
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
