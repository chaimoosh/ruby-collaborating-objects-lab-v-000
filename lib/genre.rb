class Genre
  attr_accessor :name

  def initialize
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end 
