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
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    @@all << Artist.new(name)
  end
end
