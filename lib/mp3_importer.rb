class MP3Importer
  attr_accessor
  attr_reader :path
  def initialize(path)
    @path = path
  end
  def files
    Dir.entries(path).select {|f| f[-4,f.length-1] == ".mp3"}
  end
  def import
    
  end
end
