require 'pry'

class Artist

  attr_accessor :name
  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
    @@all_songs << self
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@all_songs.count
  end
end
