class MP3Importer
  attr_accessor
  attr_reader :path
  def initialize(path)
    @path = path
  end
  def files
    Dir[path+".mp3"]
  end
  def import

  end
end
