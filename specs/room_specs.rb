require("minitest/autorun")
require('minitest/rg')
require('pry')
require_relative("../room")
require_relative("../guest")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("Room 1", 10)
    @room2 = Rooms.new("Room 2", 20)
    @room3 = Rooms.new("Room 3", 30)
    @karaoke_bar = Guests.new("Drop The Mic", 5000.00)
    @guest = Guests.new("Leonardo", 50)
  end

  def test_karaoke_bar_has_name
    assert_equal("Drop The Mic", @karaoke_bar.name())
  end

  def test_karaoke_bar_has_till
    assert_equal(5000.00, @karaoke_bar.till())
  end

  def test_can_add_rooms
    @karaoke_bar.add_room(@room1)
    assert_equal(10, @karaoke_bar.price)
  end

end
