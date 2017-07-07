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

  def test_check_in_check_out()
    hotel = @hotel.check_in(@guest_1.guest_name)
    assert_equal("John", hotel[0])
    hotel1 = @hotel.check_out(@guest_1)
    assert_equal(nil, hotel1)

  end

end