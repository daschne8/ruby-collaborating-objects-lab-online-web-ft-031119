class MP3Importer
  attr_accessor
  attr_reader :path
  def initialize(path)
    @path = path
  end
  def files
    Dir["./spec/fixtures/mp3s"]
  end
  def import

  end
end
