require('minitest/autorun')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup()

    @guest_1 = Guest.new("John")
    @guest_2 = Guest.new("Roman")

  end

  def test_guest_name()
    guest_name = @guest_1.guest_name
    assert_equal("John", guest_name)
  end


end