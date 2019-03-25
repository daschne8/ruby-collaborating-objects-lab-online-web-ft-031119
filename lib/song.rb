require 'pry'
class Song
  attr_accessor :name, :artist
  @@songs = []
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    artist,title,genre = filename.split(" - ")
    song = Song.new(title)
    song.artist = artist #Artist.find_or_create_by_name(artist)
    @@songs << song
    song
  end
end

binding.pry
