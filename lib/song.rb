class Song
  attr_accessor :name, :artist
  attr_reader
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    artist,title,genre = filename.split(" - ")
    song = Song.new(title)
    song.artist = Artist,find_or_create_by_name(artist)
  end
end
