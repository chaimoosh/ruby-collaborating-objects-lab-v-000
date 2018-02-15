class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end



  def self.new_by_filename(file)
    #binding.pry
    song = file.split(" - ")[1]
    new_song = self.new(song)
    new_artist = file.split(" - ")[0]
    new_song.artist = Artist.find_or_create_by_name(new_artist)
    new_song.artist.add_song(new_song)
    new_song.artist = file.split(" - ")[0]
    Artist.add_song()
    new_song
  end

  def artist=(artist)
    @artist = artist
    @artist = Artist.find_or_create_by_name(artist)
    #binding.pry
  end
end 
