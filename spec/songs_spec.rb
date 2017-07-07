require ('minitest/autorun')
require_relative('../songs')

class TestSongs < Minitest::Test

    def setup()
      @song1 = Song.new("It's my life")
      @song = Song.new("I want it all")
    end
    def test_song_name
      song = @song1.song_name
      assert_equal("It's my life", song)
    end
end