class Author
  attr_accessor :name
  @posts = []
end


class Artist
  attr_accessor :name
  @songs = []
  def initialize (name)
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self.name
  end

  def songs
    @songs
  end

end
