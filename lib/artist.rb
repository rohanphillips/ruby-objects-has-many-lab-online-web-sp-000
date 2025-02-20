require 'pry'
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    newsong = Song.new(song)
    add_song(newsong)
  end

  def self.song_count
    #binding.pry
    Song.all.size
  end

  def artist_name
    @name == nil ? nil : @name.name

  end

end
