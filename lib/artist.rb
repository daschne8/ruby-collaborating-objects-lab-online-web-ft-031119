class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
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
    artist = Artist.new(name)
    artist
  end
  def print_songs
    @songs.each { |song| puts song.name  }
  end
  def self.all
    @@all
  end
end
