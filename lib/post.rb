class Post
  attr_accessor :author
  @@posts = []

  def self.posts
    @@posts
  end
end
