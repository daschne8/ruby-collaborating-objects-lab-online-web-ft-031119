class Song
  attr_accessor :name, :artist
  attr_reader
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    artist,title,genre = filename.split(" - ")
    Song.new(title)
  end
end
