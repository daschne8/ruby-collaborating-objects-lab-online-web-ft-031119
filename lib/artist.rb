class Artist
  attr_accessor :name
  attr_reader
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end

end
