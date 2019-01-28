class Author
  attr_accessor :name, :post
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def posts
    @@all << @posts
    @posts
  end

  def self.post_count
    @@all.flatten.uniq.count
  end
end
