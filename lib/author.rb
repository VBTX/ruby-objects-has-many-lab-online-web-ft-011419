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

  def posts
    @posts
  end
end





  def songs
    @songs
  end

end
