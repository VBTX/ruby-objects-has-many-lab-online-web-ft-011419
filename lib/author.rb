class Author
  attr_accessor :name
  @posts = []

  def initialize(name)
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
  end
end




  def add_song(song)
    @songs << song
    song.artist = self.name
  end

  def songs
    @songs
  end

end
