require 'pry'
class Song
  attr_accessor :name, :artist
  @@songs = []
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    artist_name,title,genre = filename.split(" - ")
    song = Song.new(title)
    song.artist_name = artist_name.find_or_create_by_name(artist_name)
    @@songs << song
    song
  end
end

# binding.pry
