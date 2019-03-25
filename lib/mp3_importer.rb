class MP3Importer
  attr_accessor
  attr_reader :path
  def initialize(path)
    @path = path
  end
  def files
    Dir.glob('path/**/*').select{ |e| File.file? e }
  end
  def import

  end
end
