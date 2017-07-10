class Room
  attr_reader :guests, :songs
  def initialize()
    @guests = []
    @songs = []
  end

  def check_in(guest_name)
    @guests.push(guest_name)
  end

  def check_out(guest_name)
    @rooms.delete(guest_name)
  end

  def add_song(song_name)
    @songs.push(song_name)
  end

  def delete_song(song_name)
    @song.delete(song_name)
  end

end