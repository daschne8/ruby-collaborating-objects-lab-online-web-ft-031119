class Song
  attr_accessor :name, :artist
  attr_reader
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)

  end
end
