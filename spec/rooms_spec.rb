require('minitest/autorun')
require_relative('../rooms')
require_relative('../guest')
require_relative('../songs')


class TestRooms < Minitest::Test

  def setup()

    @guest_1 = Guest.new("John")
    @guest_2 = Guest.new("Roman")

    @song1 = Song.new("It's my life")
    @song = Song.new("I want it all")

    @new_room = Room.new
  end

  def test_check_in
     @new_room.check_in(@guest_1)
    assert_equal(true, @new_room.guests.include?(@guest_1))
    
    @new_room.check_in(@guest_2)
    assert_equal(true, @new_room.guests.include?(@guest_2))
  end

  def test_add_music
  song = @new_room.add_song(@song1)
   assert_equal(true, @new_room.songs.include?(@song1))
  end

end