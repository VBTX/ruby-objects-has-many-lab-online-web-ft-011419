
require 'pry'
class Artist
  attr_accessor :name, :song
  @@all = []
  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
  end

  def songs
    @@all << @songs
    @songs
  end

  def self.song_count
    @@all.flatten.uniq.count
  end

end
